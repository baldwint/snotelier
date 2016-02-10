from flask import Flask
from flask_bootstrap import Bootstrap
app = Flask(__name__)
Bootstrap(app)

app.config.from_pyfile('default.cfg')
app.config.from_envvar('SNOTELIER_CONFIG', silent=True)

from snotelier import views
