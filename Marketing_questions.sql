create database marketing;
use marketing;
#Which platform has the highest average CTR?
select platform,round(avg(CTR),2) from social_media_dashboard_data 
group by platform order by platform desc;

#What are the top 5 posts with the highest Click-Through Rate (CTR)?

select Post_type,round(avg(CTR),2) as average_CTR from social_media_dashboard_data group by post_type
order by average_CTR desc limit 5;

#What is the total engagement per platform?
SELECT Platform, 
       SUM(Likes + Comments + Shares) AS Total_Engagement
FROM social_media_dashboard_data
GROUP BY Platform
ORDER BY Total_Engagement DESC;

#How many posts were made per platform?
select Platform  , count(*) as total_posts from social_media_dashboard_data group by platform;

# What is the average reach and impressions for each post type?
select post_type,avg(reach) as average_reach,avg(impressions)  as average_impressions 
from social_media_dashboard_data group by post_Type;

# Find total clicks and average CTR by date.
select Date_,sum(clicks), round(avg(CTR),2) as Average_CTR 
from social_media_dashboard_data group by Date_;

#Which post had the highest number of shares?
select post_type,max(shares) as highest_shares from social_media_dashboard_data 
group by post_type order by highest_shares desc limit 1;


