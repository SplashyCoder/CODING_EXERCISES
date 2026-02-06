WITH last_id AS(
SELECT
order_id AS last_order_id
FROM orders 
ORDER BY order_id DESC
LIMIT 1
) 

SELECT
  CASE
    WHEN order_id % 2 != 0 AND order_id != last_order_id THEN order_id + 1 -- Line 1
    WHEN order_id % 2 != 0 AND order_id = last_order_id THEN order_id -- Line 2
    ELSE order_id - 1 -- Line 3
  END AS corrected_order_id,
  item
FROM orders
CROSS JOIN last_id
ORDER BY corrected_order_id
;
