
from collections import OrderedDict

def make_engineered_features(usda_df):

    usda_df = usda_df[['WTEQ_value','SNWD_value','PREC_value','TOBS_value']]

    df_resampled = usda_df.resample('1H')
    today = df_resampled.index.min()
    dfi = df_resampled.interpolate()

    # time at which storm occurred in last 3 days
    storm = dfi['WTEQ_value'].diff(3).ix[-3*24:].idxmax()

    features = OrderedDict()
    features['WTEQ_1day'] = dfi['WTEQ_value'].diff(24).ix[-1]
    features['SNWD_1day'] = dfi['SNWD_value'].diff(24).ix[-1]
    features['WTEQ_3day'] = dfi['WTEQ_value'].diff(3*24).ix[-1]
    features['SNWD_3day'] = dfi['SNWD_value'].diff(3*24).ix[-1]
    # max accumulation rate per 3 hours
    features['WTEQ_3day_maxrate'] = dfi['WTEQ_value'].diff(3).ix[-3*24:].max()
    features['SNWD_3day_maxrate'] = dfi['SNWD_value'].diff(3).ix[-3*24:].max()
    # max accumulation rate per 3 hours
    features['temp_during_storm'] = dfi['TOBS_value'].ix[storm]
    features['trend_during_storm'] = dfi['TOBS_value'].diff(3).ix[storm]

    return features