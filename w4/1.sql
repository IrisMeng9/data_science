-- 1. Pull total number of orders that were completed on 18th March 2023 with the first name ‘John’ and last name Doe’
SELECT date, COUNT(*) AS total_number , First_name
FROM sales s 
JOIN customers c
ON s.Customer_id = c.Customer_id
WHERE date = '2023-03-18' 
AND first_name = 'John'
AND last_name = 'Doe'
