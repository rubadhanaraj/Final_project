-- Creating product table 
CREATE TABLE Product (
     Order_ID VARCHAR  NOT NULL,
     Product_ID varchar NOT NULL,
	 Category varchar Not NULL,
	 Sub_Category varchar Not NULL,
	 Segment varchar NOT NULL    	 
);
--drop product table
Drop Table product;

-- Creating Shipping_info table 
CREATE TABLE Shipping_info (
     Order_ID varchar NOT NULL,
	 Row_ID int NOT NULL,
	 City varchar NOT NULL,
     States varchar NOT NULL,
	 Country varchar NOT NULL,
	 Shipping_Cost varchar NOT NULL,
	 Order_Priority varchar NOT NULL,
	 Ship_Mode VARCHAR NOT NULL,
	 Market VARCHAR NOT NULL,
	 Region VARCHAR NOT NULL,
	 PRIMARY KEY (Row_ID)
);
--drop product Shipping_info
Drop Table Shipping_info;

-- Creating customer table 
CREATE TABLE Customer (
     Customer_ID VARCHAR  NOT NULL,
	 Customer_Name VARCHAR NOT NULL,
     Segment VARCHAR NOT NULL
);	
-- drop customer table
Drop Table Customer;

CREATE TABLE sales (
     Row_ID int NOT NULL,
	 Sales VARCHAR NOT NULL,
	 Quantity int NOT NULL,
	 Profit VARCHAR NOT NULL,
	 cost_price VARCHAR NOT NULL,
	 Months INTEGER NOT NULL,
	 years INTEGER NOT NULL,
	 PRIMARY KEY (Row_ID)
);	
--drop sales table
Drop Table sales;
-- Creating product table 
CREATE TABLE Product (
    Row_ID VARCHAR not NULL,
	Order_ID VARCHAR  NOT NULL,
     Product_ID varchar NOT NULL,
	 Category varchar Not NULL,
	 Sub_Category varchar Not NULL,
	 Segment varchar NOT NULL    
	);
	
--drop producty table
drop table product;
-- Creating Shipping_info table 
CREATE TABLE Shipping_info (
     Order_ID varchar NOT NULL,
	 Row_ID int NOT NULL,
	 City varchar NOT NULL,
     States varchar NOT NULL,
	 Country varchar NOT NULL,
	 Shipping_Cost varchar NOT NULL,
	 Order_Priority varchar NOT NULL,
	 Ship_Mode VARCHAR NOT NULL,
	 Market VARCHAR NOT NULL,
	 Region VARCHAR NOT NULL,
	 PRIMARY KEY (Row_ID)
);
-- drop table shipping_info
drop table Shipping_info;
-- Creating customer table 
CREATE TABLE Customer (
    Row_ID VARCHAR NOT NULL, 
	Customer_ID VARCHAR  NOT NULL,
	Customer_Name VARCHAR NOT NULL,
    Segment VARCHAR NOT NULL
);	
-- drop customer table
drop table customer;
-- create sales table
CREATE TABLE sales (
     Row_ID int NOT NULL,
	 Sales VARCHAR NOT NULL,
	 Quantity int NOT NULL,
	 Profit VARCHAR NOT NULL,
	 cost_price VARCHAR NOT NULL,
	 Months INTEGER NOT NULL,
	 years INTEGER NOT NULL,
	 PRIMARY KEY (Row_ID)
);	
-- drop sales table
drop table sales;

select * from shipping_info;


--total yearly sales by country----

SELECT 

Sales,
years,
Country
from
sales
inner join shipping_info on shipping_info.row_id=sales.row_id;

-- Create sales by year and country table
create table sales_by_country(
sales varchar not null,
years integer not null,
country varchar not null
);

-- drop sa;es_by_country
Drop table sales_by_country;
-- insert data into sales_by_country table
SELECT 

Sales,
years,
Country
INTO sales_by_country
from
sales
inner join shipping_info on shipping_info.row_id=sales.row_id;

Select * from sales_by_country
-- drop sales_by_country
drop table sales_by_country;

-- Creating product table 
CREATE TABLE Product (
    Row_ID VARCHAR not NULL,
	Order_ID VARCHAR  NOT NULL,
     Product_ID varchar NOT NULL,
	 Category varchar Not NULL,
	 Sub_Category varchar Not NULL,
	 Segment varchar NOT NULL    
	);
-- Creating Shipping_info table 	
CREATE TABLE Shipping_info (
     Order_ID varchar NOT NULL,
	 Row_ID VARCHAR NOT NULL,
	 City varchar NOT NULL,
     States varchar NOT NULL,
	 Country varchar NOT NULL,
	 Shipping_Cost varchar NOT NULL,
	 Order_Priority varchar NOT NULL,
	 Ship_Mode VARCHAR NOT NULL,
	 Market VARCHAR NOT NULL,
	 Region VARCHAR NOT NULL,
	 PRIMARY KEY (Row_ID)
);	
-- Creating customer table 
CREATE TABLE Customer (
    Row_ID VARCHAR NOT NULL, 
	Customer_ID VARCHAR  NOT NULL,
	Customer_Name VARCHAR NOT NULL,
    Segment VARCHAR NOT NULL
);	
-- create sales table
CREATE TABLE sales (
     Row_ID int NOT NULL,
	 Sales VARCHAR NOT NULL,
	 Quantity int NOT NULL,
	 Profit VARCHAR NOT NULL,
	 cost_price VARCHAR NOT NULL,
	 Months INTEGER NOT NULL,
	 years INTEGER NOT NULL,
	 PRIMARY KEY (Row_ID)
);	
-- drop sales tables
drop table sales;
CREATE TABLE sales (
     Row_ID VARCHAR NOT NULL,
	 Sales VARCHAR NOT NULL,
	 Quantity int NOT NULL,
	 Profit VARCHAR NOT NULL,
	 cost_price VARCHAR NOT NULL,
	 Months INTEGER NOT NULL,
	 years INTEGER NOT NULL,
	 PRIMARY KEY (Row_ID)
);	

-- Create sales by year and country table
create table sales_by_country(
sales varchar not null,
years integer not null,
country varchar not null
);
--drop table sales_by_country
drop table sales_by_country;
-- insert data into sales_by_country table
SELECT 
Sales,
years,
Country
INTO sales_by_country
from
sales
inner join shipping_info on shipping_info.row_id=sales.row_id;

select* from sales_by_country;
-- create sales_segment
SELECT
sales,
segment
INTO sales_segment
from sales
inner join customer on customer.row_id=Sales.row_id;

select* from sales_segment;

-- create table profit by country
SELECT
profit,
country
INTO profit_country
from sales
inner join shipping_info on shipping_info.row_id=sales.row_id;

select* from profit_country;

-- create table product profit
SELECT
sub_category,
profit,
years
INTO product_profit
from sales
inner join product on product.row_id=sales.row_id;
select* from product_profit;
