SELECT distinct order_status from orders
order by 1;

select * from orders
where order_status = 'COMPLETE';

select * from orders
where order_status = 'CLOSED';

select * from orders
where order_status = 'CLOSED' or order_status = 'COMPLETE';

select * from orders
where order_status in('CLOSED','COMPLETE');
