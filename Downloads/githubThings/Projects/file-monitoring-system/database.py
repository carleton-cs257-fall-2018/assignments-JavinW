'''
Anna Johnson
Javin White
December 4, 2018

Created for externship project with help from pynative
https://pynative.com/python-mysql-database-connection/

and help from 
https://flask-table.readthedocs.io/en/stable/

flask application to read and write file monitoring information
to mySQL database
'''

from flask import Flask
from flask import request
from flask import jsonify
import mysql.connector
from mysql.connector import Error
from mysql.connector import errorcode
import json
from flask_table import Table, Col
import config

app = Flask(__name__)


#Creates a table to display information
#Credit to Anna and the flask_table docs here
class ItemTable(Table):
	date_and_time = Col('date_and_time')
	event_type = Col('event_type')
	file_path = Col('file_path')
	is_directory = Col('is_directory')

#Creates a table to display information
#used in the select_from_database method
#Credit to Anna and the flask_table docs here
class Item(object):
	def __init__(self, date, event, path, is_directory):
		self.date_and_time = date
		self.event_type = event
		self.file_path = path
		self.is_directory = is_directory
	
def get_connection():
	try:
		connection = mysql.connector.connect(host=config.host,
				database=config.database,
				user=config.user,
				password=config.password,
				use_pure=True)
	
	except Exception as e:
		print(e, file=sys.stderr)
	
	return connection

#Jeff said we needed to have this in software design
@app.after_request
def set_headers(response):
	response.headers['Access-Control-Allow-Origin'] = '*'
	return response
	
'''
checks to see if the table exists
if it doesn't exist, it is created
'''
@app.route('/', methods=['GET'])
def initialize_table():
	try:
		connection = get_connection()
		db_cursor = connection.cursor()
		table_name = connection.user + '_dir_watch'		#table name based on user name because why not 
		db_cursor.execute("SHOW TABLES")
		table_exists = False
		for table in db_cursor:
			if table == table_name:
				table_exists = True
		if table_exists == False:
			create_table_query = ("""CREATE TABLE {} (time VARCHAR(100), path VARCHAR(999), event_type VARCHAR(50), is_directory VARCHAR(6))""".format(table_name))
			db_cursor.execute(create_table_query)
			print("Sucessfully created table")		
			
	except mysql.connector.Error as error:
		connection.rollback()
		print("Failed to create mySQL table {}".format(error))
	
	finally:
		if(connection.is_connected()):
			db_cursor.close()
			connection.close()
			print("MySQL connection is closed")
	
	return 'table initialized'
		
@app.route('/insert', methods=['POST'])
def insert_into_database():
	content = request.get_json()		#information passed from file system monitor
	try:
		connection = get_connection()
		db_cursor = connection.cursor(prepared=True)
		table_name = connection.user + '_dir_watch'
		sql_insert_query = ("""INSERT INTO {} (`time`, `path`, `event_type`, `is_directory`) VALUES (%s,%s,%s,%s)""".format(table_name))
		insert_tuple = (content['time'], content['path'], content['event_type'], content['is_directory'])
		db_cursor.execute(sql_insert_query, insert_tuple)
		connection.commit()
		print("Record inserted successfully into {} table".format(table_name))
	
	except mysql.connector.Error as error:
		connection.rollback()
		print("Failed to execute query {}".format(error))
		
	finally:
		if(connection.is_connected()):
			db_cursor.close()
			connection.close()
			print("MySQL connection is closed")
	
	return 'insert method called'
	
@app.route('/display', methods=['GET'])
def select_from_database():
	results_table = []
	try:
		connection = get_connection()
		db_cursor = connection.cursor()
		table_name = connection.user + '_dir_watch'
		sql_select_query = ("""SELECT * FROM {}""".format(table_name))
		db_cursor.execute(sql_select_query)
		results = db_cursor.fetchall()
		#turns a list of lists into a table
		for list in results:
			results_table.append(Item(list[0], list[1], list[2], list[3]))
			#print(list)
		table = ItemTable(results_table)
		
	except mysql.connection.Error as error:
		connection.rollback()
		print("Failed to execute query {}".format(error))
	
	finally:
		if(connection.is_connected()):
			db_cursor.close()
			connection.close()
			print("MySQL connection is closed")
	
	return table.__html__()
	
if __name__ == '__main__':
	app.run(host='10.4.18.135', port=5000, debug=True)
	#app.run(host='10.0.0.253', port=5000, debug=True)
