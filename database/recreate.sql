CREATE TABLE foxBotTweetType (
    id int not null IDENTITY(1,1) primary key ,
    name varchar(140) not null
);

CREATE TABLE foxBotTweet (
    id int not null IDENTITY(1,1) primary key,
    tweet varchar(140) not null,
	  foxBotTweetTypeId int,
    count int,
    lastTweetedDate datetime,
	  FOREIGN KEY (foxBotTweetTypeId) REFERENCES foxBotTweetType(id)
);


