
def make_engineered_daily(df):
    temps = ['TMAX_value', 'TMIN_value', 'TAVG_value',]

    current = temps + [
        'SNWD_value', 'WTEQ_value',
        'PREC_pctOfMedian_1981', #'WTEQ_pctOfMedian_1981'
    ]

    dfe = df[current]

    #these throw a bunch of warnings but I think it's ok
    dfe['TAVG_yest'] = df['TAVG_value'].shift(1) # avg temp yesterday
    dfe['SNWD_1day'] = df['SNWD_value'].diff(1) # 1 day snow depth diff
    dfe['SNWD_3day'] = df['SNWD_value'].diff(3) # 3 day snow depth diff
    dfe['PREC_1day'] = df['PREC_value'].diff(1) # 1 day precip diff

    return dfe