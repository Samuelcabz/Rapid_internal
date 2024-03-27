from flask import Flask, render_template, Blueprint, request, jsonify
from modules.Connections import mysql

dbs = mysql('localhost','root','','dashboard_table')
app = Flask(__name__,template_folder="views")
app = Blueprint("franz",__name__)


@app.route("/IFAD_Form",methods=['POST','GET'])
def ifadForm():
    return render_template("IFAD.html")

@app.route("/IFAD_Table")
def table_trackingForm():
    rows = dbs.select("SELECT `id`, `type-complaint`, `SECAP`, `complainant-quantity`, `nationality` , `date_created`, `date_modified`  FROM grievance")
    return render_template("IFADtable.html", rows=rows)

@app.route("/delete/IFAD_Table/<id>", methods=["DELETE"])
def delete_ifad_row(id):
    res = dbs.do(f"DELETE FROM grievance WHERE Id = {id}")
    return jsonify(res)

@app.route("/view_entry1/<int:id>")
def view_entry1(id):
    row = dbs.select(f"SELECT * FROM grievance WHERE Id = {id}")
    if row:
        return render_template("IFAD.html", data=row[0], readonly=True)
    else:
        return "Entry not found", 404
    

@app.route("/update_entry1/<int:id>", methods=["POST"])
def update_entry1(id):
    data = request.form
    query = "UPDATE grievance SET "
    for key, value in data.items():
        if key != 'Id':
            query += f"`{key}`='{value}', "
    query = query[:-2]
    query += f" WHERE Id = {id}"
    res = dbs.do(query)
    return jsonify(res)

@app.route("/edit_entry1/<int:id>", methods=["GET"])
def edit_entry1(id):
    row = dbs.select(f"SELECT * FROM grievance WHERE Id = {id}")
    if row:
        return render_template("IFAD.html", data=row[0], readonly=False, edit_mode=True, view_mode=True)
    else:
        return "Entry not found", 404