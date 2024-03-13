from flask import Flask, render_template, Blueprint, jsonify
from modules.Connections import mysql

dbs = mysql('localhost','root','','dashboard_table')
app = Flask(__name__,template_folder="views")
app = Blueprint("lanz",__name__)


@app.route("/") 
def index():
    return render_template("Home.html")


@app.route("/Home") 
def homepage():
    return render_template("Home.html")


@app.route("/Tracking_Form")
def trackingForm():
    return render_template("form.html")


@app.route("/Tracking_Table")
def table_trackingForm():
    rows = dbs.select("SELECT `Id`, `act_title`, `Date`, `logFrame`, `AWPB`, `reflect_i` FROM tracking_progress")
    return render_template("tableTracking.html", rows=rows)

@app.route("/delete/Tracking_Table/<int:id>", methods=["DELETE"])
def delete_tracking_row(id):
    res = dbs.do(f"DELETE FROM tracking_progress WHERE Id = {id}")
    return jsonify(res)
