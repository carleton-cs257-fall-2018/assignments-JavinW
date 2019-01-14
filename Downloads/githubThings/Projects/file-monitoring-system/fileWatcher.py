#!/usr/bin/python
'''
Javin White
Anna Johnson

December 3, 2018

Created for externship project with help from 
https://stackoverflow.com/questions/24597025/using-
python-watchdog-to-monitor-a-folder-but-when-i-rename-a-file-i-havent-b

and help from 
https://pythonhosted.org/watchdog/index.html

File monitoring program that sends change information
to a remote database.
'''

import sys
import time
import datetime
import os
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler
import requests
import json
#handle emojis with unicodename.data('emoji here')
class MyHandler(FileSystemEventHandler):

	def on_created(self, event):
		time = '{}'.format(datetime.datetime.now())
		dir_path = os.path.isdir(event.src_path)
		is_directory = "%s" % dir_path
		self.create_payload("create event", event.src_path, time, is_directory)
		
	def on_deleted(self, event):
		time = '{}'.format(datetime.datetime.now())
		dir_path = os.path.isdir(event.src_path)
		is_directory = "%s" % dir_path
		self.create_payload("delete event", event.src_path, time, is_directory)
		
	def on_modified(self, event):
		noWatch = ".DS_Store"
		dir_path = os.path.isdir(event.src_path)
		is_directory = "%s" % dir_path
		if noWatch not in event.src_path:
			if not is_directory:
				time = '{}'.format(datetime.datetime.now())
				self.create_payload("modified event", event.src_path, time, is_directory)
		
	def on_moved(self, event):
		time = '{}'.format(datetime.datetime.now())
		dir_path = os.path.isdir(event.src_path)
		is_directory = "%s" % dir_path
		print(event.dest_path)
		self.create_payload("moved/renamed event", event.src_path, time, is_directory)
	
	'''this method generates the http post request 
	to send file system change information to the database'''
	def create_payload(self, event_type, path, time, is_directory):
		#url = 'http://10.0.0.253:5000/insert'
		url = 'http://10.4.18.135:5000/insert'
		#print(url)
		payload = {
		'time': time,
		'path': path,
		'event_type': event_type,
		'is_directory': is_directory 
		}
		r = requests.post(url, json=payload)
		#print(r.text)
	
watch_directory = sys.argv[1]       # Get watch_directory parameter

#url = 'http://10.0.0.253:5000/'
url = 'http://10.4.18.135:5000/'
r = requests.get(url)
print('To display change information from the database, paste http://10.4.18.135:5000/display into your browser')
event_handler = MyHandler()
observer = Observer()
observer.schedule(event_handler, watch_directory, True)
observer.start()

'''
This block keeps the program running 
until the program is stoppped with a 
keyboardInterrupt command
'''
try:
	while True:
		time.sleep(1)
except KeyboardInterrupt:
	observer.stop()
observer.join()

	