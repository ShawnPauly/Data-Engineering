-- Inner Join
Select
o.order_date,
oi.order_item_product_id,
oi.order_item_subtotal
FROM orders AS o
	JOIN order_items AS oi
	ON o.order_id = oi.order_item_order_id;

-- Output -> total rows(172198)

SELECT count(DISTINCT order_id) FROM orders
-- Output -> total rows(68883)

SELECT count(DISTINCT order_item_order_id) FROM order_items
-- Output -> total rows(57431)

-- Subtracting both the output rows (Rows(68883) - Rows(57431)) -> 11452 rows which are not matching
	




-- Left Outer Join

Select
o.order_id,
o.order_date,
oi.order_item_id,
oi.order_item_product_id,
oi.order_item_subtotal
FROM orders AS o
	LEFT OUTER JOIN order_items AS oi
	ON o.order_id = oi.order_item_order_id
ORDER BY 1;
	
-- Output -> total rows(183650)

-- Inner Join Total Rows(172198) 
-- Outer Join Total Rows(183650) - 11452

-- Subtracting both the output rows (Rows(172198) - Rows(183650)) -> 11452 rows which are not matching

Select * from order_items
Select * from orders


