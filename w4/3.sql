-- 3. Pull the departments that generated less than $600 in 2022
SELECT Department, SUM(revenue) AS total_rev_2022
FROM sales s
JOIN items i
ON s.Item_id = i.Item_id
WHERE year(date) = 2022
GROUP BY Department
HAVING total_rev_2022 < 600