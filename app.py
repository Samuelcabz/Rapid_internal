from flask import Flask, render_template, request
from modules.Connections import mysql

app = Flask(__name__,template_folder="views")

app.config['MYSQL_HOST']= "localhost"
app.config['MYSQL_USER']= "root"
app.config['MYSQL_PASSWORD']= ""
app.config['MYSQL_DB']= "tracking_progress"

dbs = mysql('localhost','root','','tracking_progress')

@app.route("/")
def index():
    return render_template("Home.html")


@app.route("/Home") 
def homepage():
    varia = dbs.select("SELE")
    return render_template("Home.html")


@app.route("/IFAD_Form")
def ifadForm():
    return render_template("IFAD.html")


@app.route("/Tracking_Form", methods=['GET', 'POST'])
def trackingForm():
    if request.method == 'POST':
        logFrame = request.form['logFrame']
        sql = f"INSERT INTO `tracking_progress` (`logFrame`) VALUES ('{logFrame}')"
        res =dbs.do(sql)
        print(res)
    return render_template("form.html")


@app.route("/Registration_Form")
def regForm():
    return render_template("Registration.html")


@app.route("/Tracking_Table")
def table_trackingForm():
    return render_template("tableTracking.html")


@app.route("/IFAD_Table")
def table_IFAD():
    return render_template("IFADtable.html")


@app.route("/reg_Table")
def table_reg():
    return render_template("reg_additional.html")


app.run(debug=True)