SELECT order_date, count(*) as order_count
FROM orders
WHERE order_status in ('COMPLETE','CLOSED')
GROUP BY 1
ORDER BY 2 DESC



--Order of execution
--FROM
--WHERE
--GROUP BY
--SELECT
--ORDER BY