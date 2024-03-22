from flask import Flask, request, jsonify
from modules.Connections import mysql
from datetime import datetime, timedelta
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
    

def format_timestamp(timestamp):
    now = datetime.now()
    time_difference = now - timestamp
    if time_difference.total_seconds() < 1:
        return "Just now"
    elif time_difference.total_seconds() == 1:
        return "1 second ago"
    elif time_difference.total_seconds() < 60:
        return f"{int(time_difference.total_seconds())} seconds ago"
    elif time_difference.total_seconds() == 60:
        return "1 minute ago"
    elif time_difference.total_seconds() < 3600:
        minutes_ago = int(time_difference.total_seconds() / 60)
        return f"{minutes_ago} minute{'s' if minutes_ago != 1 else ''} ago"
    elif time_difference.total_seconds() == 3600:
        return "1 hour ago"
    elif time_difference.total_seconds() < 86400:
        hours_ago = int(time_difference.total_seconds() / 3600)
        return f"{hours_ago} hour{'s' if hours_ago != 1 else ''} ago"
    else:
        return timestamp.strftime("%Y-%m-%d %H:%M:%S")
    
app.jinja_env.filters['format_timestamp'] = format_timestamp

app.run(debug=True)