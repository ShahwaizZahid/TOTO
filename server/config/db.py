from pymongo import MongoClient
from urllib.parse import quote_plus

username = "shahwaizmughal"
password = "S@n9h6AQy2rWBAr"
encoded_username = quote_plus(username)
encoded_password = quote_plus(password)


client = MongoClient(f"mongodb+srv://{encoded_username}:{encoded_password}@cluster0.gjubc.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0")

db = client['ToTo']
user_collection = db['users']

