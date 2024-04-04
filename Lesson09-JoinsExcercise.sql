Select * from order_items
Select * from orders

SELECT
o.order_id,
oi.order_item_product_id,
ROUND(SUM(oi.order_item_subtotal::numeric),2) as Total_Revenue
FROM orders AS o
	JOIN order_items AS oi
	ON o.order_id = oi.order_item_order_id
WHERE o.order_status IN ('COMPLETE','CLOSED')
GROUP BY o.order_id,oi.order_item_product_id
ORDER BY 1,3 DESC;
