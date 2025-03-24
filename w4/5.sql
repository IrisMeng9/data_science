-- 5. What were the orders that were purchased in our most lucrative order
SELECT date, order_id, Customer_id, revenue, Item_name, Department 
FROM sales s
JOIN items i
ON s.item_id = i.item_id
WHERE revenue = (SELECT MAX(Revenue) FROM sales) -- Select the order that has the max revenue
