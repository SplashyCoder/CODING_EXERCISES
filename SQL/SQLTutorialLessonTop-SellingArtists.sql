WITH ranks AS (SELECT 
artist_name, 
genre,
concert_revenue, 
number_of_members, 
concert_revenue/number_of_members AS revenue_per_band_member,
RANK() OVER(
  PARTITION BY genre
  ORDER BY concert_revenue/number_of_members DESC
) AS band_rank
FROM concerts
)

SELECT
artist_name, 
genre,
concert_revenue, 
number_of_members,
revenue_per_band_member
FROM ranks
WHERE band_rank = 1
ORDER BY revenue_per_band_member DESC;

