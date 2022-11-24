DROP TABLE Shipping_info CASCADE;
-- Creating tables for final project
-- creating order table


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

-- Creating customer table 
CREATE TABLE Customer (
     Customer_ID VARCHAR  NOT NULL,
	 Customer_Name VARCHAR NOT NULL,
     Segment VARCHAR NOT NULL
);	

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
	
	
	
	
	
	
	
	
	
);