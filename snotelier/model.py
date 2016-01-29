import pandas as pd
import io
import requests

from sklearn.externals import joblib
model = joblib.load('filename.pkl') # filename is relative to run.py
                                    # this shouldn't be hardcoded,
                                    # but life is short

def get_usda_data(range_min,range_max):
    # provide range_min and range_max in LOCAL TIME

    cols = ['WTEQ', 'SNWD', 'PREC', 'TOBS',] # 'TMAX', 'TMIN', 'TAVG']
    # water equivalent, snow depth, precipitation, observed temperature,

    colstring = ','.join('{}::value'.format(name) for name in cols)

    fmt = ('http://wcc.sc.egov.usda.gov/reportGenerator/view_csv/'
           'customSingleStationReport/hourly/651:OR:SNTL/{range_min},{range_max}/{columns}')

    url = fmt.format(range_min=range_min.strftime('%Y-%m-%d'),
                     range_max=range_max.strftime('%Y-%m-%d'),
                     columns=colstring)

    r = requests.get(url)

    # parse dataframe
    df = pd.read_csv(io.StringIO(r.text), comment='#')

    # as far as I can tell, dates are in pacific time. No idea whether DST is accounted for
    df['date_utc'] = pd.to_datetime(df['Date'] + ' PST')
    df = df.set_index('date_utc')
    return df 

def make_engineered_features(usda_df): #, nwac_usda_df):
    
    features = {
        #'treeline_above': nwac_usda_df.replace(ratings_to_numbers)['treeline_above'].resample('1D'),
        'precip_today': usda_df['Precipitation Accumulation (in)'].resample('1D').diff(),
        'snowdep':      usda_df['Snow Depth (in)'].resample('1D'),
        'watereq':      usda_df['Snow Water Equivalent (in)'].resample('1D'),
        'avgtemp':      usda_df['Air Temperature Observed (degF)'].resample('1D'),
    }

    features['tempchange'] = features['avgtemp'].diff()
    # pseudo-density: don't divide by zero
    features['density'] = features['watereq'] / (features['snowdep'] + 1)

    engineered = pd.DataFrame(features)

    return engineered

ratings = ['No Rating', 'Low', 'Moderate', 'Considerable', 'High', 'Extreme']

def model_to_date(date):
    ratings = ['No Rating', 'Low', 'Moderate', 'Considerable', 'High', 'Extreme']
    df = get_usda_data(date - pd.Timedelta('1 day'), date)
    engineered = make_engineered_features(df)
    predicted = model.predict([engineered.ix[date],])[0]
    return ratings[int(predicted)]

