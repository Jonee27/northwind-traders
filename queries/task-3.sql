SELECT p.product_name,
       ROUND(SUM(o.quantity * (1 - o.discount) * o.unit_price)) as sum
FROM products p
INNER JOIN order_details o ON p.product_id = o.product_id
GROUP BY product_name, p.units_on_order
ORDER BY sum ASC LIMIT 10;