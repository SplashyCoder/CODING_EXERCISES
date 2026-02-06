
WITH custormer_product_join AS (
SELECT 
  customer.customer_id AS costomer_id, 
  COUNT( DISTINCT products.product_category) AS product_category
FROM customer_contracts AS customer 
LEFT JOIN products AS products
  ON customer.product_id = products.product_id
GROUP BY customer.customer_id
ORDER BY customer.customer_id
)

SELECT costomer_id FROM custormer_product_join
 WHERE product_category >= 3
;
