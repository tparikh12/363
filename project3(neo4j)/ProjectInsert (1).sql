LOAD DATA LOCAL INFILE 'Users/tparikh/Desktop/coms/363/dataCSV/tweets.csv' 
INTO TABLE tweets
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES 
(tid,textbody,retweet_count,retweeted,posted,posting_user);

LOAD DATA LOCAL INFILE '/Users/tparikh/Desktop/coms/363/dataCSV/tagged.csv' 
 INTO TABLE tagged FIELDS TERMINATED BY ';'
 OPTIONALLY ENCLOSED BY '"'  
 LINES TERMINATED BY '\n'  IGNORE 1 LINES  (tid,hastagname);

LOAD DATA LOCAL INFILE '/Users/tparikh/Desktop/coms/363/dataCSV/mentioned.csv'  
INTO TABLE mentioned FIELDS TERMINATED BY 
';' OPTIONALLY ENCLOSED BY '"'  LINES TERMINATED BY 
'\n'  IGNORE 1 LINES  (tid,screen_name);     

 LOAD DATA LOCAL INFILE '/Users/tparikh/Desktop/coms/363/dataCSV/user.csv'  INTO TABLE 
 user FIELDS TERMINATED BY ';' 
 OPTIONALLY ENCLOSED BY '"'  LINES TERMINATED BY
 '\n'  IGNORE 1 LINES
 (screen_name,name,sub_category,category,ofstate,numFollowers,numFollowing);
 
  LOAD DATA LOCAL INFILE '/Users/tparikh/Desktop/coms/363/dataCSV/urlused.csv'  
  INTO TABLE urlused FIELDS TERMINATED BY ';' 
  OPTIONALLY ENCLOSED BY '"'  LINES TERMINATED BY '\n'  IGNORE 1 LINES  (tid,url);
