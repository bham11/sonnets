
from flask import Flask, render_template
from data import users


app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html')


if __name__ == '__main__':
    users = users.Users()
    app.run(debug=True)