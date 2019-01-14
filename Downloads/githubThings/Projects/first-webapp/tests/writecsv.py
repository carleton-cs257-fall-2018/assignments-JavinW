#writecsv.py

import csv, sys

class WriteFile:

	def __init__(self, data_filename):
		'''
		Source tag
		'''
		#https://github.com/fivethirtyeight/data/blob/master/police-killings/police_killings.csv

		data_file = data_filename

		with open(data_file, 'r', encoding='utf-8') as data_file:
			data_file = csv.reader(data_file)
			self.person_list = []
			self.age_list = []
			self.city_list = []
			self.state_list = []
			self.date_list = []
			self.raceeth_list = []
			'''
			name,age,gender,raceethnicity,month,day,year,streetaddress,city,state,
			latitude,longitude,state_fp,county_fp,tract_ce,geo_id,county_id,
			namelsad,lawenforcementagency,cause,armed,pop,share_white,share_black,
			share_hispanic,p_income,h_income,county_income,comp_income,county_bucket,
			nat_bucket,pov,urate,college
			'''
			for person in data_file:
				person_dict = { 
								'name': person[0],
								'age': person[1],
								'gender': person[2],
								'raceethnicity': person[3],
								'month': person[4],
								'day': person[5],
								'year': person[6],
								'streetaddress': person[7],
								'city': person[8],
								'state': person[9],
								'latitude': person[10],
								'longitude': person[11],
								# 'state_fp': person[12],
# 								'county_fp': person[13],
# 								'tract_ce': person[14],
# 								'geo_id': person[15],
# 								'county_id': person[16],
# 								'namelsad': person[17]
								'lawenforcementagency': person[18],
								'cause': person[19],
								'armed': person[20],
								# 'demographics': {
# 								'pop': person[21],
# 								'share_white': person[22],
# 								'share_black': person[23],
# 								'share_hispanic': person[24],
# 								'p_income': person[25],
# 								'h_income': person[26],
# 								'county_income': person[27],
# 								'comp_income': person[28],
# 								'county_bucket': person[29],
# 								'nat_bucket': person[30],
# 								'pov': person[31],
# 								'urate': person[32],
# 								'college': person[33]
# 								}
								}

				self.person_list.append(person_dict)
				
				#WriteFile.write_person_file(self)
				age_dict = {
					'age': person[1],
					'name': person[0],
					'gender': person[2],
					'raceethnicity': person[3],
					'month': person[4],
					'day': person[5],
					'year': person[6],
					'streetaddress': person[7],
					'city': person[8],
					'state': person[9],
					'latitude': person[10],
					'longitude': person[11],				
					'lawenforcementagency': person[18],
					'cause': person[19],
					'armed': person[20],
					}
				self.age_list.append(age_dict)
				#WriteFile.write_age_file(self)
				city_dict = {
					'city': person[8],
					'name': person[0],
					'age': person[1],
					'gender': person[2],
					'raceethnicity': person[3],
					'month': person[4],
					'day': person[5],
					'year': person[6],
					'streetaddress': person[7],
					'state': person[9],
					'latitude': person[10],
					'longitude': person[11],
					'lawenforcementagency': person[18],
					'cause': person[19],
					'armed': person[20],
					}
				self.city_list.append(city_dict)
				#WriteFile.write_city_file(self)
				state_dict = {
					'state': person[9],
					'name': person[0],
					'age': person[1],
					'gender': person[2],
					'raceethnicity': person[3],
					'month': person[4],
					'day': person[5],
					'year': person[6],
					'streetaddress': person[7],
					'city': person[8],
					'latitude': person[10],
					'longitude': person[11],
					'lawenforcementagency': person[18],
					'cause': person[19],
					'armed': person[20],
					}
				self.state_list.append(state_dict)
				#WriteFile.write_state_file(self)
				date_dict = {
					'month': person[4],
					'day': person[5],
					'name': person[0],
					'age': person[1],
					'gender': person[2],
					'raceethnicity': person[3],
					'year': person[6],
					'streetaddress': person[7],
					'city': person[8],
					'state': person[9],
					'latitude': person[10],
					'longitude': person[11],				
					'lawenforcementagency': person[18],
					'cause': person[19],
					'armed': person[20],
					}
				self.date_list.append(date_dict)
				#WriteFile.write_date_file(self)
				raceeth_dict = {
					'raceethnicity': person[3],
					'name': person[0],
					'age': person[1],
					'gender': person[2],
					'month': person[4],
					'day': person[5],
					'year': person[6],
					'streetaddress': person[7],
					'city': person[8],
					'state': person[9],
					'latitude': person[10],
					'longitude': person[11],
					'lawenforcementagency': person[18],
					'cause': person[19],
					'armed': person[20],
					}
				self.raceeth_list.append(raceeth_dict)
				#WriteFile.write_raceeth_file(self)
		search_string = 'Washington'
		for person in self.person_list:
			if search_string in person['name']:
				print(person['name'])
				
	def write_person_file(self):		
		person_file = open('person_file.csv', 'w')
		with person_file:
			theFields = ['name','age','gender','raceethnicity','month','day','year','streetaddress','city','state','latitude','longitude','lawenforcementagency','cause','armed']
			writer = csv.DictWriter(person_file, fieldnames=theFields)
			for person in self.person_list:
				writer.writerow(person)
		
	def write_age_file(self):
		age_file = open('age_file.csv', 'w')
		with age_file:
			theFields = ['age','name','gender','raceethnicity','month','day','year','streetaddress','city','state','latitude','longitude','lawenforcementagency','cause','armed']
			writer = csv.DictWriter(age_file, fieldnames=theFields)
			for person in self.age_list:
				writer.writerow(person)				
				
	def write_city_file(self):
		city_file = open('city_file.csv', 'w')
		with city_file:
			theFields = ['city','name','age','gender','raceethnicity','month','day','year','streetaddress','state','latitude','longitude','lawenforcementagency','cause','armed']
			writer = csv.DictWriter(city_file, fieldnames=theFields)
			for person in self.city_list:
				writer.writerow(person)				

	def write_state_file(self):
		state_file = open('state_file.csv', 'w')
		with state_file:
			theFields = ['state','name','age','gender','raceethnicity','month','day','year','streetaddress','city','latitude','longitude','lawenforcementagency','cause','armed']
			writer = csv.DictWriter(state_file, fieldnames=theFields)
			for person in self.state_list:
				writer.writerow(person)			
		
	def write_date_file(self):
		date_file = open('date_file.csv', 'w')
		with date_file:
			theFields = ['month','day','name','age','gender','raceethnicity','year','streetaddress','city','state','latitude','longitude','lawenforcementagency','cause','armed']
			writer = csv.DictWriter(date_file, fieldnames=theFields)
			for person in self.date_list:
				writer.writerow(person)		
		
	def write_raceeth_file(self):
		raceeth_file = open('raceeth_file.csv', 'w')
		with raceeth_file:
			theFields = ['raceethnicity','name','age','gender','month','day','year','streetaddress','city','state','latitude','longitude','lawenforcementagency','cause','armed']
			writer = csv.DictWriter(raceeth_file, fieldnames=theFields)
			for person in self.raceeth_list:
				writer.writerow(person)		

filename = WriteFile("dead-black-people.csv")
