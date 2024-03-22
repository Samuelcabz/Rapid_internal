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

@app.route("/view_entry/<int:id>")
def view_entry(id):
    row = dbs.select(f"SELECT * FROM tracking_progress WHERE Id = {id}")
    if row:
        return render_template("form.html", data=row[0], readonly=True)
    else:
        return "Entry not found", 404
    
@app.route("/edit_entry/<int:id>", methods=["GET", "POST"])
def edit_entry(id):
    row = dbs.select(f"SELECT * FROM tracking_progress WHERE Id = {id}")
    if row:
        return render_template("form.html", data=row[0], readonly=False, edit_mode=True)
    else:
        return "Entry not found", 404
