-- Q1:
SELECT c.customer_id, SUM(oi.quantity * p.unit_price) AS total_order_value
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
WHERE c.customer_city = 'Mumbai'
GROUP BY c.customer_id;

-- Q2:
SELECT p.product_id, SUM(oi.quantity) AS total_quantity
FROM Products p
JOIN OrderItems oi ON p.product_id = oi.product_id
GROUP BY p.product_id
ORDER BY total_quantity DESC
LIMIT 3;

-- Q3:
SELECT sr.sales_rep_id, COUNT(DISTINCT o.customer_id) AS unique_customers
FROM SalesReps sr
JOIN Orders o ON sr.sales_rep_id = o.sales_rep_id
GROUP BY sr.sales_rep_id;

-- Q4:
SELECT o.order_id, SUM(oi.quantity * p.unit_price) AS total_value
FROM Orders o
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY o.order_id
HAVING total_value > 10000
ORDER BY total_value DESC;

-- Q5:
SELECT p.product_id
FROM Products p
LEFT JOIN OrderItems oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;
