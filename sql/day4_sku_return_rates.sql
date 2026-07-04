SELECT
product_id,
COUNT(*) AS return_count
FROM order_items
GROUP BY product_id
ORDER BY return_count DESC;
