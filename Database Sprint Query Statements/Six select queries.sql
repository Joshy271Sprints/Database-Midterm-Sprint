SELECT o.order_Id, c.customer_name, p.product_name, p.product_price
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;