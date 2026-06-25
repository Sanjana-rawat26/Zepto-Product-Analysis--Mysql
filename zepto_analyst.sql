-- =====================================================
-- ZEPTO PRODUCTS ANALYSIS USING MYSQL
-- Author: Sanjana Rawat
-- =====================================================

-- 1. Total Number of Products

SELECT COUNT(*) AS total_products
FROM zepto;

-- 2. Total Number of Categories

SELECT COUNT(DISTINCT category) AS total_categories
FROM zepto;

-- 3. Product Count by Category

SELECT category, COUNT(*) AS product_count
FROM zepto
GROUP BY category
ORDER BY product_count DESC;

-- 4. Top 5 Categories with Highest Average Discount

SELECT
    category,
    ROUND(AVG(discountPercent),2) AS avg_discount_percent
FROM zepto
GROUP BY category
ORDER BY avg_discount_percent DESC
LIMIT 5;
