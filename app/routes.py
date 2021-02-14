from flask import jsonify, request, Response
from app import app
from datetime import datetime

@app.route("/", methods=["GET"])
@app.route("/first-route", methods=["GET"])
def first_route():
    now = datetime.utcnow()
    resp = jsonify({"data": now}), 200
    return resp

