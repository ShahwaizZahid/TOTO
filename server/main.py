from fastapi import FastAPI
from pymongo import MongoClient
from pymongo.errors import PyMongoError, ServerSelectionTimeoutError
from urllib.parse import quote_plus
import os
# Replace with your MongoDB credentials
username = "shahwaizmughal"
password = "S@n9h6AQy2rWBAr"  # Be sure to encode this password
encoded_username = quote_plus(username)
encoded_password = quote_plus(password)

# Construct the MongoDB URI with encoded credentials
MONGO_URI = f"mongodb+srv://{encoded_username}:{encoded_password}@cluster0.gjubc.mongodb.net/"

# Initialize FastAPI app
app = FastAPI()

# Initialize MongoDB client
client = MongoClient(MONGO_URI, serverSelectionTimeoutMS=5000)  # Timeout set to 5 seconds

# Function to check MongoDB connection
def check_mongo_connection():
    try:
        # Attempt to connect and retrieve server information
        client.admin.command('ping')
        print("Connected to MongoDB successfully.")
        return "Connected to MongoDB successfully."
    except (ServerSelectionTimeoutError, PyMongoError) as e:
        print(f"Failed to connect to MongoDB: {e}")
        return f"Failed to connect to MongoDB: {e}"

# Define a test route
@app.get("/")
async def root():
    connection_status = check_mongo_connection()
    return {"message": connection_status}

if __name__ == "__main__":
    # Run the app with uvicorn
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8000)
