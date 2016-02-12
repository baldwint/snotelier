import pandas as pd
import io
import requests
import datetime
import os

from .usda_hourly import get_usda_hourly
from .engineered import make_engineered_features

from sklearn.externals import joblib

from pandas.core.groupby import DataError

this_dir, this_filename = os.path.split(__file__)
DATA_PATH = os.path.join(this_dir, "data", "LR_hourly.pkl")

ratings = ['No Rating', 'Low', 'Moderate', 'Considerable', 'High', 'Extreme']

def model_to_date(site_id, state, date):
    model = joblib.load(DATA_PATH)
    ratings = ['No Rating', 'Low', 'Moderate', 'Considerable', 'High', 'Extreme']
    df_raw = get_usda_hourly(
            site_id,
            date - pd.Timedelta('7 days'),
            date,
            state=state)
    try:
        dict_eng = make_engineered_features(df_raw)
    except (DataError, TypeError) as e:
        print('problem engineering features for', date, site_id)
        print(df_raw)
        print(str(e))
        return 'Unavailable'

    engineered = pd.DataFrame([dict_eng,])
    inputvals = engineered.ix[0]
    try:
        predicted = model.predict([inputvals,])[0]
    except ValueError as e:
        print('ValueError for site %s' % site_id)
        print(inputvals)
        return 'Unavailable'
    return 'Relatively ' + ratings[int(predicted)]

