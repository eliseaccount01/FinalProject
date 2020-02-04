# Import Dependencies
import pandas as pd
from db_util import db_util as db
from flask import Flask, jsonify, render_template, send_from_directory, request
import os

print(db.fetch_data)

db.fetch_data(db)

# Four year avg tuition
four_tuition = list(db.four_yr_data)
four_df = pd.DataFrame(four_tuition)
four_df = four_df.rename(columns={0:"State", 1:"Four Year Tuition"})
four_df = four_df.dropna()
four_df.head()


# Two year avg tuition
two_tuition = db.two_yr_data
two_tuition
# Occupation and education data
occupation_data = db.occupation_data
occupation_data

# Occupation salary per state
state_pay = db.state_occ_pay
state_pay

app = Flask(__name__, static_folder='static')

@app.route('/static/vendor/<path:path>')
def load_vendor(path):
    return send_from_directory('static/vendor', path)

@app.route('/static/js/<path:path>')
def load_js(path):
    return send_from_directory('static/js', path)

@app.route('/static/css/<path:path>')
def load_css(path):
    return send_from_directory('static/css', path)

@app.route('/static/img/<path:path>')
def load_img(path):
    return send_from_directory('static/img', path)

@app.route('/')
def home():
    return app.send_static_file("index.html")

@app.route('/state_data')
def state_data():
    states = list(four_df["State"])
    return jsonify(states)

@app.route('/occ_data')
def occ_data():
    occupations = []
    for occ in occupation_data:
        occupations.append(occ[0])
    return jsonify(occupations)

@app.route("/api/select", methods=['POST'])
def results():
    if request.method == 'POST':
        state = int(request.json['state'])
        occ = int(request.json['occupation'])

        four_state = four_tuition[state]
        occ_ed_sal = occupation_data[occ]

        sel = {
        "State" : four_state[0],
        "Tuition" : four_state[1],
        "Occ Title" : occ_ed_sal[0],
        "Occ Ed" : occ_ed_sal[1],
        "Occ Sal" : occ_ed_sal[2],
        }
        
    return render_template('index.html')


app.run()
