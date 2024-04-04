-- Using having Clause
-- Having clause can be used after the group by statement(Having clause is not standalone)
-- Having clause is similar to where clause but can use agg function but not alias	

SELECT order_date, count(*) as total_count
FROM orders
WHERE order_status IN ('COMPLETE','CLOSED')
GROUP BY order_date
HAVING count(*) >= 120
ORDER BY total_count DESC


-- Example
SELECT 
order_item_order_id,
round(sum(order_item_subtotal)::numeric,2) as order_revenue
FROM order_items
GROUP BY order_item_order_id
HAVING round(sum(order_item_subtotal)::numeric,2) >= 2000
ORDER BY order_revenue DESC