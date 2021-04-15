SELECT country,
       COUNT(country) AS number_of_customers
FROM customers
GROUP BY country
HAVING count(country) > 5
ORDER BY number_of_customers DESC;