# Task 6: Sales Trend Analysis Using Aggregations

## 📌 Objective
Analyze monthly revenue and order volume from the `orders` table using SQL.

## 🛠 Tools
- MySQL Workbench 8.0
- Sample `online_sales` database

## 📊 SQL Query

```sql
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

