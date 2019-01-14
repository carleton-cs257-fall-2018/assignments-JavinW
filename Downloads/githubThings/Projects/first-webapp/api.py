#api.py

'''
	Kellen Dorchen
	Javin White
	October 21, 2018
'''

import sys
import flask
import json
import csv
import config
import psycopg2

app = flask.Flask(__name__, static_folder='static', template_folder='templates')

def get_connection():
	connection = None
	try:
		connection = psycopg2.connect(database=config.database,
										user=config.user,
										password=config.password)
	except Exception as e:
		print(e, file=sys.stderr)
	return connection

def get_select_query_results(connection, query, parameters=None):
	cursor = connection.cursor()
	if parameters is not None:
		cursor.execute(query, parameters)
	else:
		cursor.execute(query)
	return cursor
	
@app.after_request
def set_headers(response):
	response.headers['Access-Control-Allow-Origin'] = '*'
	return response

@app.route('/')
def hello():
    return 'Welcome to our website.'

@app.route('/name/')
def get_people():
	query = '''SELECT name FROM person ORDER BY name'''
	person_list = []
	connection = get_connection()
	if connection is not None:
		try:
			for row in get_select_query_results(connection, query):
				person = {'name': row[0]
							}
				person_list.append(person)
		except Exception as e:
			print(e, file=sys.stderr)
		connection.close()
			
	return json.dumps(person_list)
		
@app.route('/name/<name>/')	
def get_person(name):
	query = '''SELECT name, age, gender, raceethnicity, month, day,
		year, streetaddress, city, state, latitude, longitude, 
		lawenforcementagency, cause, armed FROM person ORDER BY name'''
	person_list = []
	connection = get_connection()
	if connection is not None:
		try:
			for row in get_select_query_results(connection, query, (name,)):
				if name in row[0]:
					person = {'name': row[0],
								'age': row[1],
								'gender': row[2],
	 							'raceethnicity': row[3],
								'month': row[4],
								'day': row[5],
								'year': row[6],
								'streetaddress': row[7],
								'city': row[8],
								'state': row[9],
								'latitude': row[10],
								'longitude': row[11],
								'lawenforcementagency': row[12],
								'cause': row[13],
								'armed': row[14]
								}
					person_list.append(person)
		except Exception as e:
			print(e, file=sys.stderr)
		connection.close()
		
	return json.dumps(person_list)

@app.route('/age/')		
def get_age():
	age_list = []
	query = '''SELECT age FROM age ORDER BY age'''
	connection = get_connection()
	if connection is not None:
		try:
			for row in get_select_query_results(connection, query):
				age = {
					'age': row[0]
					}	
				age_list.append(age)
		except Exception as e:
			print(e, file=sys.stderr)
		connection.close()

	return json.dumps(age_list)

@app.route('/age/<age>/')		
def get_name_by_age(age):
	age_list = []
	query = '''SELECT age, name FROM age ORDER BY name'''
	connection = get_connection()
	if connection is not None:
		try:
			for row in get_select_query_results(connection, query, (age,)):
				if age in row[0]:
					ages = {
						'age': row[0],
						'name': row[1]
						}
					age_list.append(ages)

		except Exception as e:
			print(e, file=sys.stderr)
		connection.close()

	return json.dumps(age_list)	
	
@app.route('/city/')		
def get_city():
	city_list = []
	query = '''SELECT city FROM city ORDER BY city'''
	connection = get_connection()
	if connection is not None:
		try:
			for person in get_select_query_results(connection, query):
				city = {
					'city': person[0]
					}
				city_list.append(city)
		except Exception as e:
			print(e, file=sys.stderr)
		connection.close()
	
	return json.dumps(city_list)
	
@app.route('/city/<city>/')
def get_name_by_city(city):
	city_list = []
	query = '''SELECT city, name FROM city ORDER BY name'''
	connection = get_connection()
	if connection is not None:
		try:
			for row in get_select_query_results(connection, query, (city,)):
				if row[0] in city:
					cities = {
						'city': row[0],
						'name': row[1]
						}
					city_list.append(cities)
		except Exception as e:
			print(e, file=sys.stderr)
		connection.close()
	
	return json.dumps(city_list)

@app.route('/state/')		
def get_state():
	state_list = []
	query = '''SELECT state FROM state ORDER BY state'''
	connection = get_connection()
	if connection is not None:
		try:
			for person in get_select_query_results(connection, query):
				state_dict = {
						'state': person[0]
						}
				state_list.append(state_dict)
		except Exception as e:
			print(e, file=sys.stderr)
		connection.close()
	return json.dumps(state_list)
	
@app.route('/state/<state>/')
def get_name_by_state(state):	
	state_list = []
	query = '''SELECT state, name FROM state ORDER BY name'''
	connection = get_connection()
	if connection is not None:
		try:
			for row in get_select_query_results(connection, query, (state,)):
				if row[0] in state:
					states = {
							'state': row[0],
							'name': row[1]
							}
					state_list.append(states)
		except Exception as e:
			print(e, file=sys.stderr)
		connection.close()
	return json.dumps(state_list)
	
@app.route('/date/')		
def get_date():
	date_list = []
	query = '''SELECT month, day FROM date ORDER BY month'''
	connection = get_connection()
	if connection is not None:
		try:
			for person in get_select_query_results(connection, query):
				date_dict = {
					'month': person[0],
					'day': person[1]
					}
				date_list.append(date_dict)
		except Exception as e:
			print(e, file=sys.stderr)
		connection.close()
	return json.dumps(date_list)
	
@app.route('/date/<month>')		
def get_name_by_date(month):
	date_list = []
	query = '''SELECT month, day, name FROM date ORDER BY day'''
	connection = get_connection()
	if connection is not None:
		try:
			for row in get_select_query_results(connection, query, (month,)):
				if row[0] in month:
					date = {
						'month': row[0],
						'day': row[1],
						 'name': row[2]
						}
					date_list.append(date)
		except Exception as e:
			print(e, file=sys.stderr)
		connection.close()
	return json.dumps(date_list)
	
@app.route('/race/')		
def get_raceeth():
	raceeth_list = []
	query = '''SELECT raceethnicity FROM raceethnicity ORDER BY raceethnicity'''
	connection = get_connection()
	if connection is not None:
		try:
			for person in get_select_query_results(connection, query):
				raceeth_dict = {
					'raceethnicity': person[0]
					}
				raceeth_list.append(raceeth_dict)
		except Exception as e:
			print(e, file=sys.stderr)
		connection.close()
	return json.dumps(raceeth_list)

@app.route('/race/<race>/')		
def get_name_by_race(race):
	raceeth_list = []
	if race == "Asian":
		race = "Asian/Pacific Islander"
	query = '''SELECT raceethnicity, name FROM raceethnicity ORDER BY name'''
	connection = get_connection()
	if connection is not None:
		try:
			for row in get_select_query_results(connection, query, (race,)):
				if row[0] in race:
					raceeth = {
						 'raceethnicity': row[0],
						 'name': row[1]
						}
					raceeth_list.append(raceeth)
		except Exception as e:
			print(e, file=sys.stderr)
		connection.close()
	return json.dumps(raceeth_list)

if __name__ == '__main__':
	if len(sys.argv) != 3:
		print('Usage: {0} host port'.format(sys.argv[0]))
		print('  Example: {0} perlman.mathcs.carleton.edu 5101'.format(sys.argv[0]))
		exit()

	host = sys.argv[1]
	port = int(sys.argv[2])
	app.run(host=host, port=port, debug=True)
