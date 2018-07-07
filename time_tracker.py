import datetime

def get_current_time():
	return datetime.datetime.now()

def get_current_time_plus_seconds(seconds):
	return datetime.datetime.now() + datetime.timedelta(0,seconds)

def get_sleep_time():
	current_time = datetime.datetime.now()
	time_of_next_post = datetime.datetime(*(datetime.datetime.today().timetuple()[:3])) + datetime.timedelta(days=1, hours=17)
	return (time_of_next_post-current_time).total_seconds()
