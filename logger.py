import logging

LOG_DIRECTORY = 'logs/fox_bot.log'

class Logger:

	def __init__(self):
		self.logger = logging.getLogger(__name__)
		self.logger.setLevel(logging.INFO)

		# create a file handler
		self.handler = logging.FileHandler(LOG_DIRECTORY)
		self.handler.setLevel(logging.INFO)

		# create a logging format
		self.formatter = logging.Formatter('%(asctime)s - %(levelname)s - %(message)s')
		self.handler.setFormatter(self.formatter)

		# add the handlers to the logger
		self.logger.addHandler(self.handler)

		self.fuck = "fuck"

		self.logger.info('Logger set up!')

	def log_info(self, message):
		self.logger.info(message)

	def test(self):
		print(self.fuck)