from flask import Blueprint, jsonify, request
from pymongo import MongoClient
import re
from pymongo.errors import ServerSelectionTimeoutError
from services.user import is_valid_email
from config.db import user_collection as collection
from controller.user import signup 
auth_routes = Blueprint('auth_routes', __name__)


@auth_routes.route('/')
def check_mongo_connection():
    try:
        return jsonify({"status": "success", "message": 'Successfully insertasdsddasdsaed'}), 200
    except ServerSelectionTimeoutError as e:
        # Catch the connection timeout error and return failure response
        return jsonify({"status": "failure", "message": "Failed to insert.", "error": str(e)}), 500


@auth_routes.route('/sig', methods=['POST'])
def signup_route():
    return signup()  
