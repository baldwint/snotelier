import pandas as pd
import io
import requests

from sklearn.externals import joblib
model = joblib.load('filename.pkl') # filename is relative to run.py
                                    # this shouldn't be hardcoded,
                                    # but life is short

import numpy as np

def p2f(x):
    try:
        val = float(x.strip('%'))
    except ValueError:
        val = np.nan
    return val

def get_usda_daily(site, range_min, range_max, state='WA'):
    # all USDA times are LOCAL TIME (PDT/PST)

    cols = [
        ('WTEQ','value'),
        ('WTEQ','pctOfMedian_1981'),
        ('SNWD','value'),
        ('PREC','value'),
        ('PREC','pctOfMedian_1981'),
        ('TMAX','value'),
        ('TMIN','value'),
        ('TAVG','value'),
        ]

    colstring = ','.join('{}::{}'.format(name,avg) for name,avg in cols)
    coltitles = ['Date',] + list('{}_{}'.format(name,avg) for name,avg in cols)
    
    converters = {'Snow Water Equivalent % of Median (1981-2010)': p2f,
                  'Precipitation Accumulation % of Median (1981-2010)': p2f}

    fmt = ('http://wcc.sc.egov.usda.gov/reportGenerator/view_csv/'
           'customSingleStationReport/daily/{site}:{state}:SNTL/{range_min},{range_max}/{columns}')

    # convert these to strings.
    # the bound granularity is only by day, not by hour.
    range_min, range_max = (bound.strftime('%Y-%m-%d')
                            for bound in (range_min, range_max))

    url = fmt.format(range_min=range_min,
                     range_max=range_max,
                     columns=colstring, site=site, state=state)
    
    r = requests.get(url)

    # parse dataframe
    df = pd.read_csv(io.StringIO(r.text), comment='#',
                    converters=converters)
    
    # shorten column labels
    collabels = df.columns
    df.columns = coltitles
    
    # cheat sheet for column labels
    for a,b in zip(coltitles,collabels):
        pass
        #print("{}:{}".format(a,b))

    # as far as I can tell, dates are in pacific time. No idea whether DST is accounted for
    df['datetime_loc'] = pd.to_datetime(df['Date'])
    #df['date_utc'] = pd.to_datetime(df['Date'] + ' PST')
    df = df.set_index('datetime_loc')
    return df, collabels, url

def make_engineered_daily(df):
    temps = ['TMAX_value', 'TMIN_value', 'TAVG_value',]

    current = temps + [
        'SNWD_value', 'WTEQ_value',
        'PREC_pctOfMedian_1981', 'WTEQ_pctOfMedian_1981'
    ]

    dfe = df[current]

    #these throw a bunch of warnings but I think it's ok
    dfe['TAVG_yest'] = df['TAVG_value'].shift(-1) # avg temp yesterday
    dfe['SNWD_1day'] = df['SNWD_value'].diff(-1) # 1 day snow depth diff
    dfe['SNWD_3day'] = df['SNWD_value'].diff(-3) # 3 day snow depth diff
    dfe['PREC_1day'] = df['PREC_value'].diff(-1) # 1 day precip diff

    return dfe

ratings = ['No Rating', 'Low', 'Moderate', 'Considerable', 'High', 'Extreme']

def model_to_date(site_id, state, date):
    ratings = ['No Rating', 'Low', 'Moderate', 'Considerable', 'High', 'Extreme']
    df,_,_ = get_usda_daily(
            site_id,
            date - pd.Timedelta('7 days'),
            date,
            state=state)
    engineered = make_engineered_daily(df)
    try:
        predicted = model.predict([engineered.ix[date],])[0]
    except ValueError:
        return 'Unknown'
    return ratings[int(predicted)]

