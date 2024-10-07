from flask import Flask, Blueprint
import re
from routes.user import auth_routes

app = Flask(__name__)
app.register_blueprint(auth_routes)
auth_routes = Blueprint('auth_routes', __name__)

if __name__ == '__main__':
    app.run(debug=True)
