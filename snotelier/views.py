from snotelier import app
from flask import render_template, request
import wtforms
from wtforms.fields.html5 import DateField
import datetime

import sqlalchemy as sa
import pandas as pd

import markdown
import io
from pathlib import Path

from flask import make_response, url_for, Markup
import json
from plotly.utils import PlotlyJSONEncoder

from .model import model_to_date
from .usda_hourly import get_usda_hourly

db = sa.create_engine('postgres://%s@%s/%s'
        % (app.config['PGUSER'],
           app.config['PGHOST'],
           app.config['PGDB'],
           ))

def nearest_snotels(lat, lon, limit=5):
    # haversine formula. in miles.
    # http://stackoverflow.com/questions/11112926/how-to-find-nearest-location-using-latitude-and-longitude-from-sql-database
    fmt = sa.text("""SELECT site_id, state, site_name, elev,
    ( 3959 * acos( cos( radians(:lat) ) * cos( radians( lat ) ) * cos( radians( lon )
    - radians(:lon) ) + sin( radians(:lat) ) * sin( radians( lat ) ) )
    ) AS distance FROM snotels
    ORDER BY distance
    LIMIT :limit;""")
    #  HAVING distance <= 2500
    stmt = fmt.bindparams(limit=limit, lat=lat, lon=lon)
    df = pd.read_sql(stmt, db).set_index('site_id')
    return df

@app.route('/db')
def birth_page():
    sql_query = """
                SELECT * FROM reports WHERE region='Mt Hood' limit 10;
                """
    query_results = pd.read_sql_query(sql_query,db)
    table = Markup(query_results.to_html())
    return render_template("blank.html", title='db stuff', content=table)

class TheForm(wtforms.Form):
    date = DateField('Date', format='%Y-%m-%d',
            default=datetime.date.today)
    lat = wtforms.FloatField('Lat', id='lat')
    lng = wtforms.FloatField('Lng', id='lng')

def relevant_nwac_reports(date):
    before = date - pd.Timedelta('2 days')
    after  = date + pd.Timedelta('2 days')
    stmt = sa.select(['datetime_utc', 'treeline_above',
            'treeline_near', 'treeline_below']
            ).select_from('reports').where(
                    "region='Mt Hood'"
                ).where(
                    "datetime_utc >= '%s'" % before
                ).where(
                    "datetime_utc <= '%s'" % after
                    ).order_by('datetime_utc').limit(10)
    query_results = pd.read_sql(stmt, db)
    return query_results


@app.route('/')
@app.route('/result', methods=['GET', 'POST'])
def estimate():
    form = TheForm(request.form)
    if request.method == 'POST' and form.validate():
        date = form.date.data
        params = dict(
                date=date,
                lat=form.lat.data,
                lng=form.lng.data,
                )
        nearby_snotels = nearest_snotels(params['lat'], params['lng'])
        estimates = []
        probas = []
        for site_id,state in nearby_snotels['state'].iteritems():
            our_estimate, our_prob = model_to_date(site_id, state, date)
            estimates.append(our_estimate)
            probas.append(our_prob)
        nearby_snotels['rating'] = estimates
        nearby_snotels['probability'] = probas
        #relevant_nwac = relevant_nwac_reports(date)
        print(list(nearby_snotels.itertuples()))
        return render_template('result.html', params=params,
                title = "Estimate for {date}".format(date=date),
                #result = relevant_nwac.to_html(),
                snotels=list(nearby_snotels.itertuples()),
                )
    return render_template('input.html', form=form, title='Snotelier')

def make_datapackage(df):
    data = []
    for col in ['WTEQ_value', 'SNWD_value', 'PREC_value', 'TOBS_value']:
        series = df[col]
        x = [str(dt) for dt in series.index]
        y = [float(v) for v in series.values]
        dic = dict(x=x, y=y, type='scatter', name=col)
        data.append(dic)
    return dict(children=data)

@app.route('/plotdata.json')
def plotdata():
    site_id = request.args['site_id']
    state = request.args['state']
    date = request.args['date']
    date = pd.to_datetime(date)
    start = date - pd.Timedelta('7 days')
    print('getting usda data')
    df = get_usda_hourly(site_id, start, date, state)
    print('got usda data')
    print(df.isnull().any())
    # we need to specify PlotlyJSONEncoder, because it emits NaN
    # values as null instead of NaN (which is invalid JSON)
    # https://github.com/plotly/plotly.py/issues/202
    output = json.dumps(make_datapackage(df),
            cls=PlotlyJSONEncoder)
    response = make_response(output)
    response.mimetype = 'application/json'
    return response

@app.route('/plotsite')
def plotsite():
    site_id = request.args.get('site_id', '')
    date = request.args.get('date')
    return render_template('plotsite.html', site_id=site_id, date=date)

@app.route('/about')
def about():
    thispath = Path(__file__)
    readme_path = thispath.parent.parent.joinpath("README.md")
    with io.open(str(readme_path), 'r') as fl:
        content = Markup(markdown.markdown(fl.read()))
    return render_template("blank.html", title='About Snotelier', content=content)
