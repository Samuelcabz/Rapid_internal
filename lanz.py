from flask import Flask, render_template, Blueprint, jsonify, request
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

@app.route("/spreadsheet")
def excelupload():
    return render_template("excel.html")

@app.route("/Tracking_Form")
def trackingForm():
    return render_template("form.html")

@app.route("/Tracking_Table")
def table_trackingForm():
    rows = dbs.select("SELECT `Id`, `act_title`, `Date`, `logFrame`, `AWPB`, `reflect_i`, `date_created`, `date_modified` FROM tracking_progress")
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
    
@app.route("/update_entry/<int:id>", methods=["POST"])
def update_entry(id):
    data = request.form
    query = "UPDATE tracking_progress SET "
    for key, value in data.items():
        if key != 'Id':
            query += f"`{key}`='{value}', "
    query = query[:-2]
    query += f" WHERE Id = {id}"
    res = dbs.do(query)
    return jsonify(res)

@app.route("/edit_entry/<int:id>", methods=["GET"])
def edit_entry(id):
    row = dbs.select(f"SELECT * FROM tracking_progress WHERE Id = {id}")
    if row:
        return render_template("form.html", data=row[0], readonly=False, edit_mode=True, view_mode=True)
    else:
        return "Entry not found", 404

