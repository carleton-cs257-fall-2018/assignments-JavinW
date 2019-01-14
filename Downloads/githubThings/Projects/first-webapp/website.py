#website.py

import sys
import flask

app = flask.Flask(__name__, static_folder='static', template_folder='templates')

@app.route('/')
def get_main_page():
	global api_port
	return flask.render_template('index.html', api_port=api_port)
	
@app.route('/name/')
def get_name_page():
	global api_port
	return flask.render_template('name.html', api_port=api_port)
	
@app.route('/age/')
def get_age_page():
	global api_port
	return flask.render_template('age.html', api_port=api_port)

@app.route('/date/')
def get_date_page():
	global api_port
	return flask.render_template('date.html', api_port=api_port)
	
@app.route('/race/')
def get_race_page():
	global api_port
	return flask.render_template('race.html', api_port=api_port)
	
@app.route('/city/')
def get_city_page():
	global api_port
	return flask.render_template('city.html', api_port=api_port)

@app.route('/state/')
def get_state_page():
	global api_port
	return flask.render_template('state.html', api_port=api_port)
	
@app.route('/donations/')
def get_donations_page():
	global api_port
	return flask.render_template('donations.html', api_port=api_port)
	
if __name__ == '__main__':
	if len(sys.argv) != 4:
		print('Usage: {0} host port api-port'.format(sys.argv[0]), file=sys.stderr)
		exit()
		
	host = sys.argv[1]
	port = sys.argv[2]
	api_port = sys.argv[3]
	app.run(host=host, port=int(port), debug=True)