import pymssql
import sys
sys.path.append('../')
from secret_constants import *
import time_tracker

class Imnotlovinit_repository:

	def __init__(self, logger):
		self.connection = pymssql.connect(db_host, db_user, db_password, db_database, charset='utf8')
		self.cursor = self.connection.cursor() 
		self.logger = logger
	
	def get_next_happy_tweet(self):	
		SQL_command = ("select id, tweet, foxBotTweetTypeId, count from foxBotTweet fbt where fbt.foxBotTweetTypeId = 1 order by fbt.count, fbt.lastTweetedDate asc")

		self.cursor.execute(SQL_command)
		tweet_record = self.cursor.fetchone()

		self.mark_tweet_as_used(tweet_record)
		return tweet_record[1]

	def get_next_cyril_tweet(self):	
		SQL_command = ("select id, tweet, foxBotTweetTypeId, count from foxBotTweet fbt where fbt.foxBotTweetTypeId = 2 order by fbt.count, fbt.lastTweetedDate asc")

		self.cursor.execute(SQL_command)
		tweet_record = self.cursor.fetchone()

		self.mark_tweet_as_used(tweet_record)
		return tweet_record[1]

	def mark_tweet_as_used(self, tweet_record):
		new_tweet_count = tweet_record[3] + 1
		tweet_id = tweet_record[0]
		current_time = time_tracker.get_current_time()
		query_string = "update foxBotTweet set count = " + str(new_tweet_count) + " , lastTweetedDate = convert(datetime,'" + current_time.strftime("%Y-%m-%d %H:%M:%S") + "') where id = " + str(tweet_id)
		self.logger.log_info("RUNNING SQL: " + query_string)
		SQL_command = (query_string) 
		self.cursor.execute(SQL_command)
		self.connection.commit()

	def close_connection(self):
		self.connection.close()
