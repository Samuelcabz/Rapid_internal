from flask import Flask, render_template, Blueprint, jsonify
from modules.Connections import mysql

dbs = mysql('localhost','root','','dashboard_table')
app = Flask(__name__,template_folder="views")
app = Blueprint("andz",__name__)


@app.route("/Registration_Form")
def regForm():
	return render_template("Registration.html")

@app.route("/get_users")
def get_users():
	dbs.select("SELECT * FROM `users` ;")
	return render_template("Registration.html")

@app.route("/reg_Table")
def table_reg():
    rows = dbs.select("SELECT `id`, `name`, `rcu`, `pcu`, `job`, `uploadImage` FROM users")
    return render_template("reg_additional.html", rows=rows)

@app.route("/get_users_data")
def get_user_data():
    user_data = dbs.select("SELECT * FROM users")
    return jsonify(user_data)