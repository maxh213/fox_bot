import random, os

class Fox_bot:

	def __init__(self, api, logger, repo):
		self.api = api
		self.logger = logger
		self.repo = repo
		self.happy_directory = "img/happy/Ferdynand/"
		self.sad_directory = "img/sad/"
		self.friend_food_directory = "img/friends/watermelon/"
		self.friend_directory = "img/friend/Cyril/"
		self.young_directory = "img/young"

	def get_random_picture_filename(self, directory):
		return random.choice(os.listdir(directory))

	def tweet_happy(self):
		fox_picture = self.happy_directory + self.get_random_picture_filename(self.happy_directory)
		message = self.repo.get_next_happy_tweet()
		self.api.update_with_media(filename=fox_picture, status=message)
		self.logger.log_info("Tweeted a happy fox picture (" + fox_picture + "), with the message: '" + message + "'")

	def tweet_cyril(self):
		fox_picture = self.friend_directory + self.get_random_picture_filename(self.friend_directory)
		message = self.repo.get_next_happy_tweet()
		self.api.update_with_media(filename=fox_picture, status=message)
		self.logger.log_info("Tweeted a cyril picture (" + fox_picture + "), with the message: '" + message + "'")


	
	
