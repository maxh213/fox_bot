import tweepy
from random import *

class Bot:

	def __init__(self, api, logger):
		self.api = api
		self.logger = logger

	def get_api(self):
		return self.api

	def follow_back_all_followers(self):
		for follower in tweepy.Cursor(self.api.followers).items():
			if not follower.following and not follower.protected:
				##add 10 second delay between each because twitter's a fussy bitch
				sleep(10)
				follower.follow()
				self.logger.log_info("Just followed: " + follower.screen_name)

