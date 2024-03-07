from flask import Flask, render_template, request, Blueprint
from modules.Connections import mysql

dbs = mysql('localhost','root','','tracking_progress')
app = Blueprint("franz",__name__)


@app.route("/IFAD_Form")
def ifadForm():
    return render_template("IFAD.html")

@app.route("/IFAD_Table")
def table_IFAD():
    return render_template("IFADtable.html")