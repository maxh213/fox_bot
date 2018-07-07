import datetime

def get_current_time():
	return datetime.datetime.now()

def get_current_time_plus_seconds(seconds):
	return datetime.datetime.now() + datetime.timedelta(0,seconds)