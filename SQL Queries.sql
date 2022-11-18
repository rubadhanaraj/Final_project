DROP TABLE Orders CASCADE;
-- Creating tables for final project
-- creating order table
CREATE TABLE Orders (
     Order_ID VARCHAR  NOT NULL,
     Row_ID int NOT NULL,
	 Order_Date date Not NULL,
	 Product_Name VARCHAR Not NULL,
	 cost_price NUMERIC NOT NULL,
	 Quantity int NOT NULL,
     Sales NUMERIC NOT NULL,
	 Discount_dollars NUMERIC NOT NULL	
);

-- Creating product table 
CREATE TABLE Product (
     Order_ID VARCHAR  NOT NULL,
     Product_ID varchar NOT NULL,
	 Category varchar Not NULL,
	 Sub_Category varchar Not NULL,
	 Segment varchar NOT NULL    	 
);

-- Creating Shipping_info table 
CREATE TABLE Shipping_info (
     Order_ID varchar NOT NULL,
	 City varchar NOT NULL,
     States varchar NOT NULL,
	 Country varchar NOT NULL,
	 Shipping_Cost varchar NOT NULL,
	 Order_Priority varchar NOT NULL	 
);

-- Creating customer table 
CREATE TABLE Customer (
     Product_ID VARCHAR  NOT NULL,
	 Customer_Name VARCHAR NOT NULL,
     Segment VARCHAR NOT NULL,
	PRIMARY KEY (Product_ID) 
);