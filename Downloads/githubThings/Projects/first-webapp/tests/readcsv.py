'''
Put your name here boi

'''
import csv, sys

class ReadDataFile:
	def __init__(self, data_filename):
		'''
		Source tag
		'''
		#https://github.com/fivethirtyeight/data/blob/master/police-killings/police_killings.csv

		data_file = data_filename

		with open(data_file, 'r', encoding='utf-8') as data_file:
		data_file = csv.reader(data_file)
		self.person_list = []
		'''
		name,age,gender,raceethnicity,month,day,year,streetaddress,city,state,
		latitude,longitude,state_fp,county_fp,tract_ce,geo_id,county_id,
		namelsad,lawenforcementagency,cause,armed,pop,share_white,share_black,
		share_hispanic,p_income,h_income,county_income,comp_income,county_bucket,
		nat_bucket,pov,urate,college
		'''
		for person in data_file:
			person_dict = { 'victim': {
							'name': person[0],
							'age': person[1],
							'gender': person[2],
							'raceethnicity': person[3]
							},
							'date': {
							'month': person[4],
							'day': person[5],
							'year': person[6]
							},
							'area': {
							'streetaddress': person[7],
							'city': person[8],
							'state': person[9],
							'latitude': person[10],
							'longitude': person[11],
							'state_fp': person[12],
							'county_fp': person[13],
							'tract_ce': person[14],
							'geo_id': person[15],
							'county_id': person[16],
							'namelsad': person[17]
							},
							'death_info': {
							'lawenforcementagency': person[18],
							'cause': person[19],
							'armed': person[20]
							},
							'demographics': {
							'pop': person[21],
							'share_white': person[22],
							'share_black': person[23],
							'share_hispanic': person[24],
							'p_income': person[25],
							'h_income': person[26],
							'county_income': person[27],
							'comp_income': person[28],
							'county_bucket': person[29],
							'nat_bucket': person[30],
							'pov': person[31],
							'urate': person[32],
							'college': person[33]
							}
							}

			self.person_list.append(person_dict)
			search_string = 'Washington'
			for person in self.person_list:
				print(person)
		#methods please

testing = ReadDataFile("dead-black-people.csv")
