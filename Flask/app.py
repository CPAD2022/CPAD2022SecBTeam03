from flask import Flask, render_template, jsonify, request, Markup
from model import predict_image
from PIL import Image
import io
import os
import json
from io import BytesIO
import requests
import utils

app = Flask(__name__)
cf_port = os.getenv("PORT")

@app.route('/', methods=['GET'])
def home():
    return render_template('index.html')
