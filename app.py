from flask import Flask, request, render_template
from flask_cors import CORS
app = Flask(__name__)
# app = Flask(__name__,template_folder="templates/",static_folder="static/", static_url_path="")
CORS(app)
# @app.route("/")
# def index():
#     return "Hello Flask"

@app.route('/', methods=["GET",'POST'])
def predict():
    return render_template('index.html')

if __name__ == '__main__':
    app.run(host="0.0.0.0", debug=True)