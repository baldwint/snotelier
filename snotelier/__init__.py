from flask import Flask
from flask_bootstrap import Bootstrap
app = Flask(__name__)
Bootstrap(app)

if not app.debug:
    import logging
    handler = logging.FileHandler('snotelier.log')
    handler.setLevel(logging.WARNING)
    app.logger.addHandler(handler)

app.config.from_pyfile('default.cfg')
app.config.from_envvar('SNOTELIER_CONFIG', silent=True)

from snotelier import views
