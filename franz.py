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
    rows = dbs.select("SELECT `id`, `type-complaint`, `SECAP`, `complainant-quantity`, `nationality` FROM grievance")
    return render_template("IFADtable.html", rows=rows)

@app.route("/delete/IFAD_Table/<id>", methods=["DELETE"])
def delete_ifad_row(id):
    res = dbs.do(f"DELETE FROM grievance WHERE Id = {id}")
    return jsonify(res)