import datetime

TWENTY_FOUR_HOUR_CLOCK_POST_HOUR = 17 
POST_EVERY_DAYS = 1


def get_current_time():
	return datetime.datetime.now()

def get_current_time_plus_seconds(seconds):
	return datetime.datetime.now() + datetime.timedelta(0,seconds)

def get_sleep_time():
	current_time = datetime.datetime.now()
	time_of_next_post = datetime.datetime(*(datetime.datetime.today().timetuple()[:3])) + datetime.timedelta(days=POST_EVERY_DAYS, hours=TWENTY_FOUR_HOUR_CLOCK_POST_HOUR)
	return (time_of_next_post-current_time).total_seconds()
