from snotelier import app
from flask import render_template, request
import wtforms
from wtforms.fields.html5 import DateField

import sqlalchemy as sa
import pandas as pd

# for generating images of plots
import io
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure
from flask import make_response

from .model import get_usda_data, model_to_date

user = 'tkb'
host = 'localhost'
dbname = 'avy'
db = sa.create_engine('postgres://%s@%s/%s'%(user,host,dbname))

@app.route('/db')
def birth_page():
    sql_query = """
                SELECT * FROM reports WHERE region='Mt Hood' limit 10;
                """
    query_results = pd.read_sql_query(sql_query,db)
    table = query_results.to_html()
    return render_template("blank.html", title='db stuff', content=table)

class TheForm(wtforms.Form):
    #username = wtforms.TextField('Username',
    #        [wtforms.validators.Length(min=4, max=25)])
    date = DateField('Date', format='%Y-%m-%d')
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
                #name=form.username.data,
                date=date,
                lat=form.lat.data,
                lng=form.lng.data,
                )
        our_estimate = model_to_date(date)
        relevant_nwac = relevant_nwac_reports(date)
        return render_template('result.html', params=params,
                title = "Estimate for {date}".format(date=date),
                result = relevant_nwac.to_html(),
                score=str(our_estimate)
                )
    return render_template('app.html', form=form, title='Snotelier')

def arrange_plot(aw, ah, n=1):
    w,h = aw+1, ah+1
    fig = Figure(figsize=(w,h))
    hinc = ah/n
    axes = []
    for i in range(n):
        if i:
            kwargs = dict(sharex = ax)
        else:
            kwargs = dict()
        ax = fig.add_axes([.5/w, (.5 + i*hinc)/h, aw/w, hinc/h], **kwargs)
        axes.append(ax)
    return fig, axes

@app.route('/usda-<date>.png')
def gen_image(date):
    fig,axes = arrange_plot(8,6,4)
    axes[-1].set_title(str(date))
    # fill in data
    date = pd.to_datetime(date)
    df = get_usda_data(date - pd.Timedelta('1 day'),
                       date + pd.Timedelta('1 day'),)
    df['Snow Water Equivalent (in)'].plot(ax=axes[0], legend=True)
    df['Snow Depth (in)'].plot(ax=axes[1], legend=True)
    df['Precipitation Accumulation (in)'].plot(ax=axes[2], legend=True)
    df['Air Temperature Observed (degF)'].plot(ax=axes[3], legend=True)
    # render it out
    canvas = FigureCanvas(fig)
    output = io.BytesIO()
    canvas.print_png(output)
    response = make_response(output.getvalue())
    response.mimetype = 'image/png'
    return response


