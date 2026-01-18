SELECT tweet_count, COUNT(user_id) AS hola FROM(
SELECT user_id, COUNT(tweet_id) AS tweet_count FROM tweets 
WHERE tweet_date BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY user_id
) AS total GROUP BY(tweet_count);