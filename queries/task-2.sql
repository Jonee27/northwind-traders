SELECT c.category_name as category,
       COUNT(p.product_name) as number_of_products
FROM categories c
INNER join products p on c.category_id = p.category_id
GROUP BY c.category_name
ORDER BY number_of_products DESC;