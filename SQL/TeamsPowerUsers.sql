SELECT sender_id, COUNT(message_id) AS sum FROM messages
WHERE EXTRACT(MONTH FROM sent_date) = '8'
AND EXTRACT (YEAR FROM sent_date) = '2022'
GROUP BY sender_id
ORDER BY sum DESC
LIMIT 2
;