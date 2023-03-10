USE project;

SELECT
    PRODUCT_ID,ORDER_DATE as ORDER_DATE,sum(BUY_NUM) as BUY_NUM
FROM
    order_list
GROUP BY
     PRODUCT_ID,ORDER_DATE;
     
SELECT a.ORDER_DATE, a.PRODUCT_ID, a.BUY_NUM FROM order_list a
INNER JOIN
  (
    SELECT ORDER_DATE, PRODUCT_ID, BUY_NUM FROM
    (SELECT DATE_ADD(ORDER_DATE,INTERVAL 1 DAY)ORDER_DATE, PRODUCT_ID, BUY_NUM FROM order_list)x
    )b
  ON a.ORDER_DATE=b.ORDER_DATE AND a.BUY_NUM > b.BUY_NUM