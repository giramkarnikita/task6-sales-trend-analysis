CREATE DATABASE sales_analysis;
USE sales_analysis;

SELECT VERSION();

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    product_id INT,
    amount INT
);

INSERT INTO orders (order_id, order_date, product_id, amount) VALUES
(1, '2023-01-05', 101, 1200),
(2, '2023-01-18', 102, 900),
(3, '2023-02-02', 103, 2500),
(4, '2023-02-20', 104, 1100),
(5, '2023-03-15', 101, 1350),
(6, '2023-03-25', 105, 2200),
(7, '2023-04-10', 106, 1800),
(8, '2023-04-11', 107, 2700),
(9, '2023-04-15', 108, 3100),
(10, '2023-05-05', 109, 1900);

SELECT * FROM orders LIMIT 10;


SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS `year_month`,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY `year_month`
ORDER BY `year_month`;

SET SESSION sql_mode = '';

SELECT 
  YEAR(order_date) AS order_year,
  MONTH(order_date) AS order_month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY 
  YEAR(order_date),
  MONTH(order_date)
ORDER BY total_revenue DESC
LIMIT 3;












