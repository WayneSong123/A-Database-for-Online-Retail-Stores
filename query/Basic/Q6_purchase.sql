USE `project`;

SELECT COUNT(*)
FROM `purchase`
GROUP BY SUPPLIER_ID
ORDER BY COUNT(*);
-- 查看从哪一个supplier订购次数最多

SELECT SUM(PURCHASE_NUM)
FROM `purchase`
GROUP BY PRODUCT_ID
ORDER BY SUM(PURCHASE_NUM);
-- 查看订购数量最多的商品是什么

SELECT SUM(TOTAL_COST)
FROM `purchase`
GROUP BY SUPPLIER_ID
ORDER BY SUM(TOTAL_COST);
-- 查看在哪一个supplier订购花费最多

SELECT SUM(TOTAL_COST)
FROM `purchase`
GROUP BY PRODUCT_ID
ORDER BY SUM(TOTAL_COST);
-- 查看订购花费最多的产品是什么