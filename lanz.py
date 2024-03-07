from flask import Flask, render_template, request, Blueprint
from modules.Connections import mysql

dbs = mysql('localhost','root','','tracking_progress')

app = Blueprint("lanz",__name__)


@app.route("/")
def index():
    return render_template("Home.html")


@app.route("/Home") 
def homepage():
    varia = dbs.select("SELE")
    return render_template("Home.html")


@app.route("/Tracking_Form", methods=['GET', 'POST'])
def trackingForm():
    if request.method == 'POST':
        logFrame = request.form['logFrame'].upper()
        sql = f"INSERT INTO `tracking_progress` (`logFrame`) VALUES ('{logFrame}')"
        res =dbs.do(sql)
        print(res)
    return render_template("form.html")


@app.route("/Tracking_Table")
def table_trackingForm():
    return render_template("tableTracking.html")


