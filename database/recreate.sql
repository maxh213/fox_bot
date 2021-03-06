CREATE TABLE foxBotTweetType (
    id int not null IDENTITY(1,1) primary key ,
    name varchar(140) not null
);

CREATE TABLE foxBotTweet (
    id int not null IDENTITY(1,1) primary key,
    tweet nvarchar(140) not null,
	  foxBotTweetTypeId int default null,
    count int default 0,
    lastTweetedDate datetime default null,
	  FOREIGN KEY (foxBotTweetTypeId) REFERENCES foxBotTweetType(id)
);

INSERT INTO [dbo].[foxBotTweetType]
           ([name])
     VALUES
           ('happy')
INSERT INTO [dbo].[foxBotTweetType]
           ([name])
     VALUES
           ('sad')
INSERT INTO [dbo].[foxBotTweetType]
           ([name])
     VALUES
           ('friend')
INSERT INTO [dbo].[foxBotTweetType]
           ([name])
     VALUES
           ('friend food')

INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES('Today I dug a big hole!', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES('I wish all foxes could live as happy a life as me!', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES(N'It''s so nice to feel the sun on my fur 🌞 I never got to see the sun', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES(N'Today''s a great day for laying in the sun! 🌞 Is it sunny where you are?', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES(N'🦊', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES(N'🦊🦊', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES(N'🦊🦊🦊', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES(N'Have a great day! 🦊', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES('What does the fox say? Ban fur farms!! #FurFreeBritain', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES('Today''s a great day to lay in the grass #NoWorries #FreeFox', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES('The humans who rescued me give me lots of food and toys <3 I''m so thankful', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES('Since my humans rescued me I''ve got to enjoy lots of new things, like grass!!', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES('Since my humans rescued me I''ve got to enjoy lots of new things, like fresh air!!', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES('Since my humans rescued me I''ve got to enjoy lots of new things, like the sky!!', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES('Since my humans rescued me I''ve got to enjoy lots of new things, like having room to run around!', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES(N'Why do people want to steal my coat? don''t they know it''s not theirs?? 🤔🦊', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES(N'Say no to the fur trade! I like my coat on me thank you very much #BanFur 🦊', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES(N'I''m so lucky I got rescued for the fur farm, but a lot of my friends are still in cages :( #BanFur', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES(N'Please don''t support the fur trade! 🦊', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES(N'I just woke up from a nap 😴', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId])
     VALUES(N'Who doesn''t love fresh air? It''s sad that my friends in cages never get to experience it :( #BanFur', 1)
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId], [count], [lastTweetedDate])
     VALUES('I am much happier now I''m not living in a cage, I wish more of my friends from the farm were here to join me.', 1, 1, GETDATE())
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId], [count], [lastTweetedDate])
     VALUES(N'I''m so much happier now that I''ve been rescued from the fur farm 🦊', 1, 1, GETDATE())
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId], [count], [lastTweetedDate])
     VALUES(N'Every day is great when you aren''t locked in a cage! 🔓 #Freedom', 1, 1, GETDATE())
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId], [count], [lastTweetedDate])
     VALUES('#JustFoxThings', 1, 1, GETDATE())
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId], [count], [lastTweetedDate])
     VALUES('#FoxLife', 1, 1, GETDATE())
INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId], [count], [lastTweetedDate])
     VALUES('#FoxSake ban fur farms', 1, 0, GETDATE())

INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId], [count], [lastTweetedDate])
     VALUES('#Friday #Relaxing #LivingMyBestLife', 1, 0, GETDATE())

INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId], [count], [lastTweetedDate])
     VALUES('Today is a good day to take a nap!', 1, 0, GETDATE())

INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId], [count], [lastTweetedDate])
     VALUES('Love having all this free space to run around!', 1, 0, GETDATE())

INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId], [count], [lastTweetedDate])
     VALUES('Did you know foxed love watermelon as a snack in the heat?', 1, 0, GETDATE())

INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId], [count], [lastTweetedDate])
     VALUES('Today is a good day to take a nap!', 1, 0, GETDATE())

INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId], [count], [lastTweetedDate])
     VALUES('What''s for lunch today?', 1, 0, GETDATE())


INSERT INTO [dbo].[foxBotTweetType]
           ([name])
     VALUES
           ('cyril')
INSERT INTO [dbo].[foxBotTweetType]
           ([name])
     VALUES
           ('ferdynand & cyril')

INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId], [count], [lastTweetedDate])
     VALUES('This is my friend cyril, she has three legs but is still managing to live her best life on the farm with me!', 5, 0, GETDATE())

INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId], [count], [lastTweetedDate])
     VALUES('Cyril loves the sunshine too!', 5, 0, GETDATE())

INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId], [count], [lastTweetedDate])
     VALUES('Cyril loves the camera! Our human friends take so many pictures of us', 5, 0, GETDATE())

INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId], [count], [lastTweetedDate])
     VALUES('#CyrilMoments', 5, 0, GETDATE())

INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId], [count], [lastTweetedDate])
     VALUES('So glad me & Cyril got rescued together so we could live in our forever home!', 5, 0, GETDATE())

INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId], [count], [lastTweetedDate])
     VALUES('#FoxMoments', 5, 0, GETDATE())

INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId], [count], [lastTweetedDate])
     VALUES('I wish our other fox friends from the farm could have been rescued like Cyril & me :(', 5, 0, GETDATE())

INSERT INTO [dbo].[foxBotTweet] ([tweet],[foxBotTweetTypeId], [count], [lastTweetedDate])
     VALUES('Cyril likes the heat much more than I do! #BlackFurIsntGoodInTheSun', 5, 0, GETDATE())

	

