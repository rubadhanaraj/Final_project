-- Creating tables for final project
-- creating countries table
CREATE TABLE Countries (
     Order_ID VARCHAR  NOT NULL,
     City VARCHAR NOT NULL,
	 States varchar Not NULL,
	 Country varchar Not NULL,
	 Postal_Code varchar NOT NULL,
     Sales varchar NOT NULL,
	 Profit varchar NOT NULL,
	PRIMARY KEY (Order_ID) 
);

-- Creating sales table 
CREATE TABLE Sales (
     Order_ID VARCHAR  NOT NULL,
     Row_ID int NOT NULL,
	 Order_date date Not NULL,
	 Product_name varchar Not NULL,
	 Quantity int NOT NULL,
     Sales varchar NOT NULL,
	PRIMARY KEY (Order_ID) 
);

-- Creating profit table 
CREATE TABLE Profit (
     Row_ID int NOT NULL,
	 Quantity int NOT NULL,
     Sales varchar NOT NULL,
	 Profit varchar NOT NULL,
	PRIMARY KEY (Row_ID) 
);

-- Creating year_month table 
CREATE TABLE Year_Month (
     Order_ID VARCHAR  NOT NULL,
	 Years date NOT NULL,
     Months date NOT NULL,
	 Sales varchar NOT NULL,
	 Profit varchar NOT NULL,
	PRIMARY KEY (Order_ID) 
);

-- Creating Discount table 
CREATE TABLE Discount (
     Order_ID VARCHAR  NOT NULL,
     Product_ID varchar NOT NULL,
	 Product_name varchar Not NULL,
	 Quantity int NOT NULL,
	 Discount_dollars varchar NOT NULL,
     Sales varchar NOT NULL,
	PRIMARY KEY (Order_ID) 
);

-- Creating catagory table 
CREATE TABLE Catagory (
     Order_ID VARCHAR  NOT NULL,
	 Row_ID int NOT NULL,
     Product_ID varchar NOT NULL,
	 Segment varchar Not NULL,
	 Category varchar NOT NULL,
	 Sub_Category varchar NOT NULL,
	PRIMARY KEY (Order_ID,Row_ID) 
);