#!flask/bin/python
from app import app

if __name__ == "__main__":
    # Use the werkzeug webserver
    app.run(host="0.0.0.0", port=15000, debug=True)
