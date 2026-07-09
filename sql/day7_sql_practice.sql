-- SKU Return Rate
SELECT
product_id,
COUNT(*) AS total_returns
FROM order_items
GROUP BY product_id
ORDER BY total_returns DESC;

-- Average Return Timing
SELECT
AVG(
DATEDIFF(
order_delivered_customer_date,
order_purchase_timestamp
)
)
AS avg_days_to_return
FROM orders;

-- Bracketing Behavior
SELECT
order_id,
product_id,
COUNT(DISTINCT size)
AS different_sizes
FROM purchases
GROUP BY order_id,
product_id
HAVING COUNT(DISTINCT size)>=3;
