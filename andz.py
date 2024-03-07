from flask import Flask, render_template, request, Blueprint, jsonify
from modules.Connections import mysql

dbs = mysql('localhost','root','','ojt')
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
	return render_template("reg_additional.html")
