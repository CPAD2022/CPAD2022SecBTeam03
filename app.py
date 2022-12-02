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



@app.route('/predict', methods=['GET', 'POST'])
def predict():
    if request.method == 'POST':
        try:
            
            # Fetch image from URL
            
            # print("REQUEST  TYPE:", type(request.data))
            # print("---------", request.data)
            fetched_url = request.data
            # print("FETCHED URL", fetched_url)
            img_f = fetched_url.decode()
            json_object = json.loads(img_f)
            # print("JSON OBJECT", json_object["URL"])
            # print("IMAGE F", type(img_f))
            # print("REQUEST:", request.data)
            # print("---------------------------------------------")
            # print("REQUEST 2:", request.get_data)

            img_fire = requests.get(json_object["URL"])
            # print("oooooooo", img_fire.content)
            img = Image.open(BytesIO(img_fire.content))
            img_byte_arr = io.BytesIO()

            # Save image as bytes
            img.save(img_byte_arr, format='PNG')
            img_byte_arr = img_byte_arr.getvalue()

            # Send image to prediction model 
            prediction = predict_image(img_byte_arr)
            print(prediction)
            return utils.disease_dic[prediction]
        except:
            pass
    return render_template('index.html', status=500, res="Internal Server Error")


if __name__ == "__main__":
    if cf_port is None:
        app.run(host='0.0.0.0', port=5000, debug=True)
    else:
        app.run(host='0.0.0.0', port=int(cf_port), debug=True)
    # app.run(debug=True)
