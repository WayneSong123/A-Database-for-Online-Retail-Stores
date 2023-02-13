SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

USE project;

SELECT
	*
FROM 
	(SELECT PRODUCT_ID, SUPPLIER_ID, PRODUCT_NAME, CATEGORY, MIN(SUPPLIER_PRICE) AS MINIMUN_PRICE FROM `suppliers_products` GROUP BY PRODUCT_ID) a 
    LEFT JOIN (SELECT * FROM `suppliers_basic_info`) b
    ON a.SUPPLIER_ID = b.SUPPLIER_ID
GROUP BY PRODUCT_ID;