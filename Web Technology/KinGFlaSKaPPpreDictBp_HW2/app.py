from flask import Flask, request, jsonify
from flask_cors import CORS
import joblib
import numpy as np


app = Flask(__name__)
cors = CORS(app)

@app.route('/', methods=["POST"])
def get_values():
    data_json = request.get_json()
    pred_BP = make_predictions(data_json["age"], data_json["weight"])
    return pred_BP

def make_predictions(age,weight):
    model_LR = joblib.load('/home/RamyaGopinath/mysite/regr.pkl')
    x = np.array([age,weight]).reshape(1,-1)
    predicted_BP = model_LR.predict(x)[0]

    return str(predicted_BP)


# if __name__ == "__main__":
#     app.run(debug = True)