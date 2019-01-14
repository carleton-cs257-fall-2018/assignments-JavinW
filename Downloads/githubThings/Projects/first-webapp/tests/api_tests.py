'''
    api_tests.py
    Kellen Dorchen
    Javin White
    October 15, 2018
'''

import unittest, json

class ApiTester(unittest.TestCase):
    def setUp(self):
        self.data_source = people.People("data_test.csv")

    def tearDown(self):
        pass
#---------------------------------------------------
    def test_person(self):
        self.assertEqual(self.data_source.person(name='Alexander Long'))

    def test_get_name(self):
        self.assertEqual(self.data_source.person(name='Alexander Long'))

    def test_get_age(self):
        self.assertEqual(self.data_source.age(age='23'))
        
    def test_age_value(self):
    	self.assertRaises(ValueError, self.data_source.age(age='mel$3$@'))

    def test_get_gender(self):
        self.assertEqual(self.data_source.person(gender='Male'))

    def test_get_raceethnicity(self):
        self.assertEqual(self.data_source.raceethnicity(raceethnicity='Black'))
        
    def test_value_raceethnicity(self):
    	self.assertRaises(self.data_source.raceethnicity(raceethnicity=55)

    def test_get_month(self):
        self.assertEqual(self.data_source.date(month='February'))
        
    def test_value_month(self):
    	self.assertRaises(ValueError, self.data_source.date(month='ca-ching'))

    def test_get_day(self):
        self.assertEqual(self.data_source.date(day=25))
        
    def test_value_data(self):
    	self.assertRaises(ValueError, self.data_source.date(day='Fat Tuesday'))

    def test_get_year(self):
        self.assertEqual(self.data_source.date(year=2015))

    def test_get_streetaddress(self):
        self.assertEqual(self.data_source.person(street_address='500 North Oliver Ave'))

    def test_get_city(self):
        self.assertEqual(self.data_source.city(city='Milwaukee'))

    def test_get_state(self):
        self.assertEqual(self.data_source.state(state='KS'))

	def test_value_state(self):
		self.assertRaises(ValueError, self.data_source.state(state=57))

    def test_get_latitude(self):
       	self.assertEqual(self.data_source.state(latitude='39.4629302'))

    def test_get_longitude(self):
        self.assertEqual(self.data_soure.state(longitude='-87.3788602'))

    def test_get_lawenforecementagency(self):
        self.assertEqual(self.data_source.person(law_enforcement_agency='Terre Haute Police Department'))

    def test_get_cause(self):
        self.assertEqual(self.data_source.person(cause='Gunshot'))

    def test_get_armed(self):
        self.assertEqual(self.data_source.person(armed='Knife'))

#------------------------------------------------------
if __name__ == '__main__':
    unittest.main()
