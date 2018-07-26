import tweepy
import random
from time_tracker import *
from logger import Logger
from secret_constants import *
from bot_configs import Bot_configs
from bot import Bot
from fox_bot import Fox_bot
from sys import argv
from random import randint
from time import sleep
from repositories import imnotlovinit_repository 

logger = Logger()
repo = imnotlovinit_repository.Imnotlovinit_repository(logger)

def main():
	print(repo.get_next_happy_tweet())

def run_on_server():
	try:
		logger.log_info("Starting Bot...")
		bot_configs = Bot_configs(consumer_key, consumer_key_secret, access_token, access_token_secret)
		bot, fox_bot = create_bots(bot_configs, logger, repo)
		bot_functions = get_bot_functions(bot, fox_bot)
		logger.log_info("Successfully created the bots...")

		while (True):
			sleep_until_next_action()
			bot.follow_back_all_followers()
			fox_bot.tweet_happy()
			sleep_until_next_action()
			fox_bot.tweet_cyril()

	except Exception as exception:
		logger.log_error(exception)
			
		
def sleep_until_next_action():
	sleep_time = get_sleep_time()
	wake_time = get_current_time_plus_seconds(sleep_time)
	logger.log_info("Going to sleep until " + wake_time.strftime("%Y-%m-%d %H:%M:%S"))
	sleep(sleep_time)

def create_bots(bot_configs, logger, repo):
	api = get_api(bot_configs)
	return Bot(api, logger), Fox_bot(api, logger, repo)

def get_api(bot_configs):
	auth = tweepy.OAuthHandler(bot_configs.get_consumer_key(), bot_configs.get_consumer_key_secret())
	auth.set_access_token(bot_configs.get_access_token(), bot_configs.get_access_token_secret())
	api = tweepy.API(auth)
	return api

def parse_args(args: str) -> bool:
	running_on_server = False
	for arg in args:
		if arg.lower() == 'true':
			running_on_server = True
	return running_on_server

if __name__ == "__main__":
	running_on_server = parse_args(argv[1:])
	if running_on_server:
		run_on_server()
	else:
		main()