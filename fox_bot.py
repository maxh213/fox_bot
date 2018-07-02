import random, os

FOX_EMOJI = "🦊"
WATERMELON_EMOJI = "🍉"
SUN_EMOJI = "🌞"
OPEN_LOCK_EMOJI = "🔓"
LOCK_EMOJI = "🔒"

class Fox_bot:

	def __init__(self, api):
		self.api = api
		self.happy_directory = "img/happy/"
		self.sad_directory = "img/sad/"
		self.friend_food_directory = "img/friend/food/"
		self.friend_directory = "img/friend"
		self.happy_tweets = [
			"Today I dug a big hole!",
			"I am much happier now I'm not living in a cage, I wish more of my friends from the farm were here to join me.",
			"I wish all foxes could live as happy a life as me!",  
			"I'm so much happier now that I've been rescued from the fur farm " + FOX_EMOJI,
			"It's so nice to feel the sun on my fur " + SUN_EMOJI + " I never got to see the sun back on the farm..", 
			"Today's a great day for laying in the sun! " + SUN_EMOJI + " Is it sunny where you are?",
			"Every day is great when you aren't locked in a cage!" + OPEN_LOCK_EMOJI + " #Freedom",
			FOX_EMOJI + FOX_EMOJI,
			"Have a great day! " + FOX_EMOJI,
			FOX_EMOJI + FOX_EMOJI + FOX_EMOJI,
			FOX_EMOJI,
			"#JustFoxThings",
			"#FoxLife " + FOX_EMOJI
		]
		self.friend_food_tweets = [
			"My friend felix loves watermelon! " + WATERMELON_EMOJI +  " What are you guys eating today??",
			"Some people are suprised but me and my fox friends love watermelon when it's hot! " + SUN_EMOJI + WATERMELON_EMOJI,
			FOX_EMOJI + SUN_EMOJI + WATERMELON_EMOJI
		]
		self.friend_tweets = [
			"My friend felix loves playing outside!",
			"#FoxFriends"
		]

	def get_tweet_text(self, potential_tweets):
		return random.choice(potential_tweets)

	def get_random_picture_filename(self, directory):
		return random.choice(os.listdir(directory))
		#TEST THIS WORKS 

	def tweet_happy(self):

		fox_picture = self.happy_directory + self.get_random_picture_filename(self.happy_directory)
		print(fox_picture)
		message = self.get_tweet_text(self.happy_tweets)
		self.api.update_with_media(filename=fox_picture, status=message)
		print("Tweeted a happy fox picture (" + fox_picture + "), with the message: '", message, "'")
	
