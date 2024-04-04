select * from orders;


-- grouping the order status with the count agg
select order_status,count(order_status) as order_count
from  orders
group by 1
order by 2 desc;


-- grouping the order date with the count agg
select order_date, count(*) as order_count
from orders
group by 1
order by 2 desc;


-- taking only year and month using to_char function and grouping based on order date
select to_char(order_date,'yyyy-MM') as order_month, count(*) as order_count
from orders
group by 1
order by 2 desc;

select * from order_items;

-- adding all the order item subtotal and grouping them with order id (type casting using ::)
select order_item_order_id, 
		round(sum(order_item_subtotal)::numeric, 2) as order_revenue
from order_items
group by 1
order by 1;

