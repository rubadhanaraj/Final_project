select* from sales_data;
----Top 10 profitable products----
select "Sub-Category", sum("Profit")
           from sales_data
           group by "Sub-Category"
           order by sum("Profit") desc
           limit 10;
		   
---The impact of discount on quantity sold----
SELECT "Discount", COUNT(*) 
FROM sales_data 
GROUP BY "Discount"
ORDER BY "Discount" DESC;		   
--Top 10 profitable countries---		   
SELECT "Country","Profit"
FROM sales_data 
WHERE "Profit">0 
ORDER BY "Profit" DESC
limit 10;