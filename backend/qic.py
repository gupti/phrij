"""
qicboard database stuff


Made by Paul and seb in a hurry
"""

from flask import Flask, request, session, render_template

qic = Flask(__name__)

@app.route("/")
def home():
	return render_template("show_entries.html", None) 
