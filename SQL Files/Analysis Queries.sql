--total yearly counts of sales----

SELECT COUNT(Sales) as total_sales_count_2011
FROM sales
WHERE years='2011';


SELECT COUNT(Sales) as total_sales_count_2012
FROM sales
WHERE years='2012';


SELECT COUNT(Sales) as total_sales_count_2013
FROM sales
WHERE years='2013';


SELECT COUNT(Sales) as total_sales_count_2014
FROM sales
WHERE years='2014';

--total yearly sum of sales---

SELECT sum(Sales) as total_sales_count_2011
FROM sales
WHERE years='2011';

SELECT sum(Sales) as total_sales_count_2012
FROM sales
WHERE years='2012';

SELECT sum(Sales) as total_sales_count_2013
FROM sales
WHERE years='2013';

SELECT sum(Sales) as total_sales_count_2014
FROM sales
WHERE years='2014';

--sales by products----




----Us data----
SELECT * 
From Shipping_info as si
LEFT JOIN sales as s
ON si.Row_ID = s.Row_ID
WHERE country='United States';


--saving US data in a  new table as US-data---

SELECT  Order_ID,City, States, Country,Shipping_Cost,Order_Priority,Ship_Mode,Market,Region
INTO US_data
FROM Shipping_info as si
LEFT JOIN sales as s
ON si.Row_ID = s.Row_ID
WHERE country='United States';
















































