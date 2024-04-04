-- Creating VIEWS with joins

CREATE VIEW order_details_v
AS
SELECT
o.*,
oi.order_item_product_id,
oi.order_item_subtotal
FROM orders AS o
	JOIN order_items AS oi
	ON o.order_id = oi.order_item_order_id;
	
	
-------------------------------------------------------------------
-- Calling the view with filters

Select * 
from order_details_v 
where order_id = 2;


------------------------------------------------------------------
-- Altering the created VIEW (Same as the create command but need to add REPLACE)

CREATE OR REPLACE VIEW order_details_v
AS
SELECT
o.*,
oi.order_item_product_id,
oi.order_item_subtotal,
oi.order_item_id
FROM orders AS o
	JOIN order_items AS oi
	ON o.order_id = oi.order_item_order_id;

