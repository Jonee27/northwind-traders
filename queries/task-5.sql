SELECT date_part('year', o.order_date) as `year`,
    DATE_PART('month', o.order_date) as `month`,
    COUNT(od.order_id) as `order_count`,
    ROUND(SUM(od.unit_price * (1 - od.discount) * od.quantity)) as revenue
FROM orders o
INNER JOIN order_details od ON o.order_id = od.order_id
WHERE date_part('year', order_date) = 1997
GROUP BY DATE_PART('month', o.order_date), date_part('year', o.order_date);

