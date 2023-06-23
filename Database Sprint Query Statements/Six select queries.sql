-- 1: Retrieve all orders along with customer information:
SELECT o.order_id, c.customer_id, c.customer_name, c.customer_email
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- 2: Retrieve all orders with product information:
SELECT o.order_id, p.product_id, p.product_name, p.product_price
FROM orders o
JOIN products p ON o.product_id = p.product_id;

-- 3: Retrieve all orders with customer and product information:
SELECT o.order_id, c.customer_id, c.customer_name, c.customer_email, p.product_id, p.product_name, p.product_price
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;

-- 4: Retrieve all customers who have placed orders:
SELECT c.customer_id, c.customer_name, c.customer_email
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

-- 5: Retrieve all products that have been ordered:
SELECT p.product_id, p.product_name, p.product_price
FROM products p
JOIN orders o ON p.product_id = o.product_id;

-- 6: Retrieve all orders along with customer and product information, sorted by order ID:
SELECT o.order_id, c.customer_id, c.customer_name, c.customer_email, p.product_id, p.product_name, p.product_price
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
ORDER BY o.order_id;
