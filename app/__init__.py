import os
from flask import Flask, jsonify

app = Flask(__name__)
app.config.from_object('config')

from app import routes
