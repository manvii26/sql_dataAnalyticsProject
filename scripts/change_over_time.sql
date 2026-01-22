-- SQL advanced DATA ANALYSIS --

-- Answer Business Questions
-- Complex Queries
-- Window Functions
-- CTE
-- Subqueries
-- Report


-- Change Over Time trends
-- OVER YEAR

SELECT 
	YEAR(order_date) as order_year,
	SUM(sales_amount) as total_sales,
	COUNT(DISTINCT customer_key) as total_customers,
	SUM(quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date)

-- OVER MONTH


SELECT 
	MONTH(order_date) as order_month,
	SUM(sales_amount) as total_sales,
	COUNT(DISTINCT customer_key) as total_customers,
	SUM(quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY MONTH(order_date)
ORDER BY MONTH(order_date)
