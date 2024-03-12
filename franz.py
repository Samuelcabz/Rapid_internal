from flask import Flask, render_template, Blueprint
from modules.Connections import mysql

dbs = mysql('localhost','root','','dashboard_table')
app = Flask(__name__,template_folder="views")
app = Blueprint("franz",__name__)


@app.route("/IFAD_Form")
def ifadForm():
    is_public = request.args["q"]
    return render_template("IFAD.html",is_public=is_public)

@app.route("/IFAD_Table")
def table_IFAD():
    return render_template("IFADtable.html") 

