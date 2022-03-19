
use PROJECT3;

create table tweets(
tid bigint not null,
textbody nvarchar(4000),
retweet_count bigint,
retweeted nvarchar(4000),
posted datetime,
posting_user nvarchar(4000),
PRIMARY KEY(tid)
);

create table tagged(
tid bigint not null,
hastagname nvarchar(4000),
PRIMARY KEY (tid)
);

create table mentioned(
tid bigint not null,
screen_name nvarchar(400),
PRIMARY KEY(tid,screen_name)
);

create table user(
screen_name varchar(50) NOT NULL,
name varchar(50),
sub_category varchar(50),
category varchar(50),
ofstate varchar(50),
numFollowers int,
numFollowing int,
PRIMARY KEY (screen_name)
);

create table urlused(
url varchar(600) Not null,
tid bigint not null,
PRIMARY KEY (url,tid)
);