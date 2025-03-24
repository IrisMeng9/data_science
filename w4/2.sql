-- 2. Pull total number of customers that purchased in January 2023 and the average amount spend per customer
SELECT COUNT(DISTINCT customer_id) AS total_number_of_customers,
		SUM(Revenue)/COUNT(DISTINCT customer_id) AS average_amount
FROM sales
WHERE year(date) = 2023 AND month(date) = 1