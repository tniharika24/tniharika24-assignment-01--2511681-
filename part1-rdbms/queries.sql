--Total revenue per customer
SELECT 
    c.customer_name,
    SUM(p.unit_price * oi.quantity) AS total_order_value
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
WHERE c.customer_city = 'Mumbai'
GROUP BY c.customer_name;

--Top 3 products
SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_quantity
FROM Products p
JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC
LIMIT 3;

--Sales reps + unique customers handled
SELECT 
    s.sales_rep_name,
    COUNT(DISTINCT o.customer_id) AS unique_customers
FROM Sales_Reps s
JOIN Orders o ON s.sales_rep_id = o.sales_rep_id
GROUP BY s.sales_rep_name;

--Orders with total value > 10,000
SELECT 
    o.order_id,
    SUM(p.unit_price * oi.quantity) AS total_value
FROM Orders o
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY o.order_id
HAVING total_value > 10000
ORDER BY total_value DESC;

--Products never ordered
SELECT 
    p.product_name
FROM Products p
LEFT JOIN Order_Items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;
