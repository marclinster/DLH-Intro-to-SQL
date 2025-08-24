/****************************************************************************************************
Sample SQL files for the class 'Introduction to SQL and Postgres'
2025 Copyright: Marc Linster
Last updated Aug 22 2025


****************************************************************************************************/

-- dlh1.sql

/*

Section: Aggregates

*/

-- Explore the data set

SELECT COUNT(*) FROM customer;

SELECT * FROM customer 
    WHERE since >= '2024-01-01'  
    AND since < '2024-12-31' 
    AND TOWN = 'Koerich' ORDER BY since  ASC;

SELECT COUNT(*) FROM customer WHERE town = 'Koerich';

SELECT COUNT(purchase_id) FROM purchase 
    JOIN customer ON purchase.customer_id = customer.id
    WHERE customer.town = 'Differdange';

SELECT town, COUNT(id) customer_count FROM customer
GROUP BY TOWN
ORDER BY town ASC;

SELECT town, COUNT(id) AS customer_count FROM customer
WHERE since >= '2024-01-01'  
    AND since < '2024-12-31'
GROUP BY TOWN
HAVING COUNT(id) > 1;

SELECT town, COUNT(id) AS customer_count FROM customer
WHERE since >= '2024-01-01'  
    AND since < '2024-12-31'
GROUP BY TOWN
HAVING COUNT(id) > 1
ORDER BY customer_count DESC; 

SELECT 
    town, 
    EXTRACT (YEAR FROM since) AS since_year,  
    COUNT(id) AS customer_count FROM customer
WHERE TOWN <> 'ESCH'    
GROUP BY town, since_year
HAVING COUNT(id) > 1
ORDER BY town ASC, since_year ASC; 


/* 

Section: Excercises 


*/

SELECT COUNT(*) FROM purchase
    JOIN product ON purchase.product_nbr = product.product_nbr
    WHERE product.category = 'food';

SELECT customer.id, customer.first_name, customer.last_name, SUM(purchase.quantity) AS total_qty
FROM customer
    JOIN purchase ON customer.id = purchase.customer_id
GROUP BY customer.id, customer.first_name, customer.last_name
ORDER BY total_qty DESC
LIMIT 10;

SELECT customer_name, sum(total_price) 
    FROM customer_purchase_view
    group by customer_name
    order by sum desc
    limit 10;

