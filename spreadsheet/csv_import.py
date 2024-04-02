from flask import Flask, redirect
from flask import request, flash,redirect, session
from modules.Connections import mysql
from flask_session import Session
import xlrd
from werkzeug.utils import secure_filename
import os

dbs = mysql('localhost','root','','dashboard_table')
app = Flask(__name__, template_folder="views")

app.config['MYSQL_HOST'] = "localhost"
app.config['MYSQL_USER'] = "root"
app.config['MYSQL_PASSWORD'] = ""
app.config['MYSQL_DB'] = "dashboard_table"

def excel_upload_open(path):  
	book = xlrd.open_workbook(path)
	sheet = book.sheet_by_index(0)
	data = [[sheet.cell_value(r, c) for c in range(sheet.ncols)] for r in range(sheet.nrows)]
	header = data[4]
	if(sheet.name !='sheetname'):
		flash(f"Invalid file template!", "error")
		return "done:Sheet Error"
	for row in data[5:]:
		logFrame = row[1]
		AWPB= row[2]
		reflect_i = row[3]
		act_title = row[4]
		Males = row[5]
                                                                                    
		

		querycsv = ("INSERT INTO tracking_progress (logFrame,AWPB,reflect_i,act_title,Males) VALUES ('{}','{}','{}','{}','{}')".
		format(logFrame,AWPB,reflect_i,act_title,Males))
		insert=dbs.do(querycsv)
		
	if(insert["response"]=="error"):
		flash(f"An error occured!", "error")
		print(str(insert))
		print(sheet.name)
	else:
		flash(f"The file was imported successfully!", "success")
	return "done"