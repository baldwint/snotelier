import pandas as pd
import io
import requests
import datetime

from .usda_daily import get_usda_daily
from .engineered_daily import make_engineered_daily

from sklearn.externals import joblib
model = joblib.load('filename.pkl') # filename is relative to run.py
                                    # this shouldn't be hardcoded,
                                    # but life is short


ratings = ['No Rating', 'Low', 'Moderate', 'Considerable', 'High', 'Extreme']

def model_to_date(site_id, state, date):
    ratings = ['No Rating', 'Low', 'Moderate', 'Considerable', 'High', 'Extreme']
    df = get_usda_daily(
            site_id,
            date - pd.Timedelta('7 days'),
            date,
            state=state)
    engineered = make_engineered_daily(df)
    dt = pd.to_datetime(date)
    # brutal hack: temperature averages are not available until the
    # end of the day, and then the relevant row will contain NaN.
    # this means that it's impossible to get a danger rating for
    # the current day. So, get yesterday's.
    if date == datetime.date.today():
        dt -= pd.Timedelta('1 day')
    # end brutal hack. need a better model!
    try:
        inputvals = engineered.ix[dt]
    except KeyError:
        print('KeyError for site %s' % site_id)
        print(engineered[['TAVG_value', 'TAVG_yest', 'SNWD_value', 'SNWD_1day']])
        return 'Unavailable'
    try:
        predicted = model.predict([inputvals,])[0]
    except ValueError as e:
        print('ValueError for site %s' % site_id)
        print(inputvals)
        return 'Unavailable'
    return 'Relatively ' + ratings[int(predicted)]

