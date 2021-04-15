SELECT c.company_name, COUNT(o.order_id) as "orders",
 STRING_AGG(o.order_id::varchar(255), ',') order_ids
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE c.country = 'USA'
GROUP BY c.company_name
ORDER BY orders ASC LIMIT 5;