MATCH (s:User)-[:POSTED]->(t:Tweet)
WHERE t.month="1" and t.year="2016" 
return t.retweet_count,t.text,s.screen_name,s.category,s.sub_category order by t.retweet_count desc limit 5;

MATCH (h:Hashtag)-[:TAGGED]->(t:Tweet)<-[:POSTED]-(u:User)-[:FROM]->(c:State)
 where t.year="2016"
 return (count(distinct(c.name))) AS
 statenum,collect(distinct(c.name)) as states, h.name AS hashtag order by statenum
 desc limit 5;

MATCH (u:User) where u.sub_category in [ 'democrat'] return u.screen_name as user_screenname, u.sub_category as
user_party, u.followers as followers_count order by followers_count desc limit 5;

MATCH (u:User) where u.sub_category in [ 'GOP'] return u.screen_name as user_screenname, u.sub_category as
user_party, u.followers as followers_count order by followers_count desc limit 5;

Match (y:Year)-[:HAS_MONTH]->(m:Month)-[:HAS_DAY]->(d:Day)-[:HAS_TWEET]->(t:Tweet)<-[:POSTED]-(u:User)-
[:FROM]->(c:State) match (t:Tweet)<-[:TAGGED]-(h:Hashtag) where y.year='2016' and m.month='1' 
and c.name in ['Ohio', 'Alaska', 'Alabama'] return distinct(h.name) as hashtag_list,c.name as state 

Match (y:Year)-[:HAS_MONTH]->(m:Month)-[:HAS_DAY]->(d:Day)-[:HAS_TWEET]->(t:Tweet)<-[:POSTED]-(u:User)-
[:FROM]->(c:State) match (t:Tweet)<-[:TAGGED]-(h:Hashtag) where u.sub_category in ['GOP', 'democrat'] 
and t.month='1' and t.year='2016' and c.name='Ohio'
return distinct(t.text) as tweet,  h.name as hashtag, u.screen_name as user,
u.sub_category as user_party  limit 5;

MATCH (c:State)<-[:FROM]-(u:User)-[:POSTED]->(t:Tweet)-[:URL_USED]->(url:Url) where u.sub_category = 'GOP' and
t.year='2016' and t.month='1'  return u.screen_name as user_screenname,c.name as
state, url.url as urls 

MATCH (c:State)<-[:FROM]-(u)-[:POSTED]->(t:Tweet)-[:MENTIONED]->(m:User) where u.sub_category = 'GOP' and
t.year="2016" and t.month="1" return  u.screen_name as user_screenname,
c.name as from, collect(m.screen_name) as posting_user limit 5

MATCH (tag:Hashtag)-[r:TAGGED]->(t:Tweet)<-[:POSTED]-(u:User) WHERE u.sub_category in ['GOP'] and
 t.month in ['1','2','3'] and t.year='2016' RETURN tag.name as hashtag, COUNT(r) as num_uses
 order by num_uses desc limit 5;

MATCH (c:State)<-[:FROM]-(u:User)-[:POSTED]->(t:Tweet)<-[:TAGGED]-(h:Hashtag) 
where h.name in ['HappyNewYear',
'NewYear', 'NewYears','NewYearsDay'] return u.screen_name AS screen_name, c.name AS location order by u.followers desc limit 12;