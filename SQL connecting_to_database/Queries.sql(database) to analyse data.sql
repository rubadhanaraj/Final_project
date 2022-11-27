---to access whole data---
SELECT * FROM sales_data;

---US data----
SELECT * FROM sales_data
 WHERE "Country" = 'United States';
 

---count sold by catagory---
SELECT "Category", COUNT(*) 
FROM sales_data 
GROUP BY "Category";

---count sold by sub_catagory---
SELECT "Sub-Category", COUNT(*) 
FROM sales_data 
GROUP BY "Sub-Category" ;

____ Top profitable countries ____
SELECT "Country","Profit"
FROM sales_data 
WHERE "Profit">0 
ORDER BY "Profit" DESC;

---countries in loss by catagory---
SELECT "Country","City","Profit","Category","Sub-Category"
FROM sales_data 
WHERE "Profit"<=0 
ORDER BY "Profit" DESC;

---The impact of discount on quantity sold----
SELECT "Discount", COUNT(*) 
FROM sales_data 
GROUP BY "Discount"
ORDER BY "Discount" DESC;

----Top 10 profitable products----
select "Sub-Category", sum("Profit")
           from sales_data
           group by "Sub-Category"
           order by sum("Profit") desc
           limit 10;
		   
---Top 10 profitable countries---		   
SELECT "Country","Profit"
FROM sales_data 
WHERE "Profit">0 
ORDER BY "Profit" DESC
limit 10;


----Total sale in 2011----
SELECT SUM("Sales") as total_sales_count_2011
FROM sales_data
WHERE "Order Date" BETWEEN '2011-01-01' AND '2011-12-31';

----Total profit in 2011----
SELECT SUM("Profit") as total_profit_count_2011
FROM sales_data
WHERE "Order Date" BETWEEN '2011-01-01' AND '2011-12-31';


----Total sale in 2012----
SELECT SUM("Sales") as total_sales_count_2012
FROM sales_data
WHERE "Order Date" BETWEEN '2012-01-01' AND '2012-12-31';

----Total profit in 2012----
SELECT SUM("Profit") as total_profit_count_2012
FROM sales_data
WHERE "Order Date" BETWEEN '2012-01-01' AND '2012-12-31';



----Total sale in 2013----
SELECT SUM("Sales") as total_sales_count_2013
FROM sales_data
WHERE "Order Date" BETWEEN '2013-01-01' AND '2013-12-31';

----Total profit in 2013----
SELECT SUM("Profit") as total_profit_count_2013
FROM sales_data
WHERE "Order Date" BETWEEN '2013-01-01' AND '2013-12-31';



----Total sale in 2014----
SELECT SUM("Sales") as total_sales_count_2014
FROM sales_data
WHERE "Order Date" BETWEEN '2014-01-01' AND '2014-12-31';

----Total profit in 2014----
SELECT SUM("Profit") as total_profit_count_2014
FROM sales_data
WHERE "Order Date" BETWEEN '2014-01-01' AND '2014-12-31';



























































