
import pytz
import requests
import pandas as pd
import io

pacific = pytz.timezone('US/Pacific')

def tzconvert(datetime, from_tz, to_tz):
    aware = from_tz.localize(datetime)
    return aware.astimezone(to_tz).replace(tzinfo=None)

def get_usda_hourly(site, range_min, range_max, state='WA'):
    # all USDA times are LOCAL TIME (PDT/PST)
    
    cols = ['WTEQ', 'SNWD', 'PREC', 'TOBS',]# 'TMAX', 'TMIN', 'TAVG']
    # water equivalent, snow depth, precipitation, observed temperature,
    cols = [
        ('WTEQ','value'),
        ('SNWD','value'),
        ('PREC','value'),
        ('TOBS','value'),
        ]

    colstring = ','.join('{}::{}'.format(name,avg) for name,avg in cols)
    coltitles = ['Date',] + list('{}_{}'.format(name,avg) for name,avg in cols)

    fmt = ('http://wcc.sc.egov.usda.gov/reportGenerator/view_csv/'
           'customSingleStationReport/hourly/{site}:{state}:SNTL/{range_min},{range_max}/{columns}')
    
    # convert these to strings.
    # the bound granularity is only by day, not by hour.
    range_min, range_max = (bound.strftime('%Y-%m-%d')
                            for bound in (range_min, range_max))
    
    url = fmt.format(range_min=range_min,
                     range_max=range_max,
                     columns=colstring, site=site, state=state)

    r = requests.get(url)

    # parse dataframe
    df = pd.read_csv(io.StringIO(r.text), comment='#')
    
    # shorten column labels
    collabels = df.columns
    df.columns = coltitles
    
    # cheat sheet for column labels
    for a,b in zip(coltitles,collabels):
        #print("{}:{}".format(a,b))
        pass
    
    # as far as I can tell, dates are in pacific time. No idea whether DST is accounted for
    df['datetime_loc'] = pd.to_datetime(df['Date'])
    df['datetime_utc'] = pd.to_datetime(df['Date'] + ' PST')
    df = df.set_index('datetime_loc')
    return df 