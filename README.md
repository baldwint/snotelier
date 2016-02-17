# About Snotelier

Snotelier is a system for inferring avalanche danger from snow
telemetry (SNOTEL) sites in Washington and Oregon. These are remote
weather stations run by the USDA
[Natural Resource Conservation Service](http://www.wcc.nrcs.usda.gov/snow/snow_map.html) which
measure temperature, snow depth, snow water content, and cumulative
precipitation for the year. Trends in these measurements tell a story
of what the snowpack is like, and certain patterns (e.g., rapid
accumulation of snow) can be indicative of instability.

In Oregon, SNOTEL data are commonly used by recreationalists
to assess avalanche danger, since expert avalanche advisories are not
available between [Mount Hood](http://nwac.us)
and [Mount Shasta](http://shastaavalanche.org). However, assessing risk
directly from SNOTEL measurements requires significant domain
knowledge. Snotelier aims to make this assessment more straightforward by
encoding this knowledge in a machine learning model.

When you select a point on the map on the main interface, Snotelier
pulls histories from the five nearest SNOTEL sites and offers its
estimation of the avalanche danger at each one on a simple 2-point
scale: "Relatively High" or "Relatively Low". These estimations are
general guidance based solely upon recent data from the SNOTEL site,
and will be subject to variation in elevation, aspect, future weather,
and other factors.

## How it works

Snotelier distinguishes troublesome conditions from relatively safe
ones by recognizing a set of patterns, or "engineered features",
deemed to be indicative of avalanche danger. For example, it
quantifies the maximum rate of recent snowfall, and the temperature
while that snowfall was occurring. These choices were informed by the
chapter on Class III factors described in the
[Avalanche Handbook](http://www.mountaineersbooks.org/The-Avalanche-Handbook-3rd-Edition-P242.aspx).
Snotelier then applies a statistical model to this feature space to
determine the probability that the snowpack is dangerous.

The parameters of this model were determined by fitting a logistic
regression to approximately 300 labeled example histories. These
example histories were selected from SNOTEL sites in one of the NWAC
advisory regions, on occasions when either a "Low" or "High" rating was
issued for that region. These sites were all located at approximately
5000 feet above sea level.

SNOTEL features are sufficient to distinguish these two classes of NWAC
rating with an accuracy of about 88% and an AUC score of greater than
0.9. These metrics have held up for labeled examples from the 2016
snow year, which was held out from the training set for validation.

Perfect accuracy is not expected, since avalanche experts are
generally smarter and have access to more information than Snotelier.
It's important to keep in mind that Snotelier makes its assessment
only from SNOTEL data - it has no knowledge of wind, qualitative weak
layer observations, or the weather forecast.

## About the author

I'm Tom Baldwin, an Insight Data Science fellow.
I completed my PhD in physics at the University of Oregon in 2015 and
my level 1 avalanche certification in 2016.
Snotelier is my 3-week project for the Insight fellowship.

For more about me, see [my website](http://baldwint.com).

