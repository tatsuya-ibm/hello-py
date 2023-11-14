# pip install flask
from flask import Flask,render_template,request

app = Flask(__name__)

@app.route('/', methods=['GET'])
def init_req():
    return init_form()

def init_form():
    param = {"text_ja": "", "text_en": ""}
    return render_template('form.html', data=param)

if __name__ == "__main__":
    app.run(port=8000, debug=True)