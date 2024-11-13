from routes import app

if __name__ == '__main__':
    """This function initializes the flask app in the routes.py file and stars the localhost
    server to be able to access the app."""
    app.run(host="0.0.0.0", port=5000)
