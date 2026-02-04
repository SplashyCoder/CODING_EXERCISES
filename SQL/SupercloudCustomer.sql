
WIHT custormer_product_join AS (
SELECT 
customer.customer_id, 
products.product_id, 
products.product_category 
FROM customer_contracts AS customer 
LEFT JOIN products AS products
ON customer.product_id = products.product_id
ORDER BY customer_id, product_id
)

;

