
SELECT t.hashtag_text, COUNT(tid) 
FROM Tweet_HashTags t
JOIN Tweet n USING (tid) 
JOIN TwitterUser u ON n.user_screen_name = u.screen_name
WHERE u.subcategory = 'GOP'
 AND n.post_month IN (1 , 2, 3) 
AND n.post_year = 2016 
GROUP BY t.hashtag_text 
ORDER BY COUNT(tid) DESC 
LIMIT 5;


SELECT m.screen_name AS mentionedUser, u2.state, GROUP_CONCAT(DISTINCT t.user_screen_name) 
FROM Mention m 
INNER JOIN Tweet t USING (tid) 
JOIN TwitterUser u ON t.user_screen_name = u.screen_name
JOIN TwitterUser u2 ON m.screen_name = u2.screen_name
WHERE u.subcategory = 'GOP' 
AND t.post_month = 1 
AND t.post_year = 2016 
GROUP BY m.screen_name 
ORDER BY COUNT(t.tid) DESC
 LIMIT 5;


SELECT u.screen_name, u.state, GROUP_CONCAT(ur.URL_text) AS URLs 
FROM Tweet_URLs ur 
JOIN Tweet n ON ur.tid = n.tid
JOIN TwitterUser u ON u.screen_name = n.user_screen_name 
WHERE u.subcategory = 'GOP' 
AND n.post_month = 1 
AND n.post_year = 2016
 GROUP BY u.screen_name ORDER BY n.user_screen_name;


SELECT n.tweet_text as tweet_text, t.hashtag_text as hashtag_text, u.screen_name,u.subcategory FROM Tweet_HashTags t 
JOIN Tweet n ON t.tid = n.tid 
JOIN TwitterUser u ON n.user_screen_name = u.screen_name
WHERE t.hashtag_text = 'ohio' 
AND (u.subcategory = 'democrat' 
OR u.subcategory = 'gop') 
AND n.post_month = 1 
AND n.post_year = 2016 
LIMIT 5;


SELECT distinct hashtag_text, state
 FROM Tweet_HashTags ta 
JOIN Tweet tw ON ta.tid = tw.tid 
JOIN TwitterUser twu ON tw.user_screen_name = twu.screen_name 
where twu.state in ('Ohio', 'Alaska', 'Alabama') 
and tw.post_month=1 
and tw.post_year=2016 
order by ta.hashtag_text;


SELECT screen_name, subcategory, numFollowers FROM TwitterUser u 
WHERE subcategory = 'Democrat' ORDER BY numFollowers DESC 
LIMIT 5;

SELECT screen_name, subcategory, numFollowers FROM TwitterUser u 
WHERE subcategory = 'GOP' 
ORDER BY numFollowers DESC LIMIT 5;



SELECT u.screen_name, u.state 
FROM Tweet_HashTags t 
JOIN Tweet n ON t.tid = n.tid 
JOIN TwitterUser u ON n.user_screen_name = u.screen_name WHERE t.hashtag_text IN ('HappyNewYear' , 'NewYear', 'NewYears', 'NewYearsDay') 
GROUP BY u.screen_name 
ORDER BY u.numFollowers DESC 
LIMIT 12;


SELECT COUNT(DISTINCT state) 
as statenum,GROUP_CONCAT(DISTINCT state) 
as states, hashtag_text 
FROM Tweet_HashTags ta JOIN Tweet tw ON ta.tid = tw.tid 
JOIN TwitterUser u ON tw.user_screen_name = u.screen_name where state <> 'na' 
GROUP BY ta.hashtag_text
ORDER BY COUNT(DISTINCT state) DESC 
LIMIT 5;




SELECT t.num_retweets, t.tweet_text, u.screen_name, u.category, u.subcategory
FROM Tweet t 
INNER JOIN TwitterUser u ON t.user_screen_name = u.screen_name 
WHERE t.post_month = 1 
AND t.post_year = 2016 
ORDER BY t.num_retweets DESC
 LIMIT 5;
