from flask import Flask, render_template, Blueprint
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
    rows = dbs.select("SELECT `act_title`, `Date`, `logFrame`, `AWPB`, `reflect_i` FROM tracking_progress")
    return render_template("tableTracking.html", rows=rows)
