from flask import Flask, request, jsonify, redirect
from modules.Connections import mysql
import franz
import lanz
import andz

dbs = mysql('localhost','root','','dashboard_table')
app = Flask(__name__, template_folder="views")

app.config['MYSQL_HOST'] = "localhost"
app.config['MYSQL_USER'] = "root"
app.config['MYSQL_PASSWORD'] = ""
app.config['MYSQL_DB'] = "dashboard_table"

app.register_blueprint(franz.app)
app.register_blueprint(lanz.app)
app.register_blueprint(andz.app)


@app.route("/insert/<TABLE>", methods=["POST", "GET"])
def insert(TABLE):
    coloumn = ""
    values = ""
    for ids in request.form:
        coloumn += f",`{ids}`"
        values += f",'{request.form[ids]}'"
    res = dbs.do(f"INSERT {TABLE} ({coloumn[1:]}) VALUES ({values[1:]})")
    return jsonify(res)

app.run(debug=True)