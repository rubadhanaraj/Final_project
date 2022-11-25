
# Superstore_sales_analysis
## Overview
The purpose of this project is to analyse the Superstore sales data between the years 2011 - 2014. The main objective of this project is to predict the future sales, profit and demand forecasting. The datset has been downloaded from https://www.kaggle.com/ 

## Presentation
Link : https://docs.google.com/presentation/d/1H-rHqhmp2mlxg0gsWFuW3URJST1Oxokn/edit?usp=share_link&ouid=117207044042995402543&rtpof=true&sd=true

## Description of rudimentary EDA
The superstore sales dataset has 24 columns and 52000 rows in flat file format. The data has been cleaned with the Python using Pandas library.The CSV has been imported to Jupyter Notebook for cleaning and transformation. The exploratory data analysis started by
* Importing dependencies
* Reading data into a DataFrame
* Removing missing values, outliers
* Dropping unneccesary columns which has null values
* Re-indexing and reformatting our data
* Descriptive statistics
* Graphical representation such as Box Plot, Correlation heat map

## Database
PostgreSQL is the local database we are using for this project. The original dataset has been loaded into Postgres database by changing the encoding of the data. Reference : (https://superuser.com/questions/290593/how-to-convert-character-encodings-on-windows). 
Entity Relationship Diagram(ERD) has been created. Based on ERD, tables have been created using pandas and loaded into Postgres using connection engine. AWS Relational database was created and connected to Postgres and all the python codes have been written in the database. 

![image](https://user-images.githubusercontent.com/108298416/203901268-698d3208-08f9-4069-9e3c-3ae84be7eaa8.png)

Entity Relationship Diagram : https://drive.google.com/file/d/1gsY_jhIfgfpAcDV7hpQJpfwTtRJzGZ0x/view?usp=share_link

## Machine Learning
The  machine learning model is connected to the provisonal database using sql connection engine. For this particular project, the questions answered would be the sales predictiomn for the future based on the data for the year 2011-2014. Things noticed in the dataset which could affect the accuracy of prediction are,
* There are lot 35 duplicate values in Customer_ID, Order_ID and Product_ID columns together. 
* There are different customer_id's under same order_id and product_id, even though the row id's are unique. The model has been run after dropping the duplicate values.

![image](https://user-images.githubusercontent.com/108298416/203901892-2fecc2d4-5751-4a30-aefa-525a4fc9d139.png)

We have been using ScikitLearn Maching Learning library to create machine learning models for predicting our data. Data has been split using training and testing split setup by 75:25 train test split ratio. The training dataset have been fit into Mutilple Linear Regression model. The r2 score of the scaled training data is 69% and the testing data is 74%

![image](https://user-images.githubusercontent.com/108298416/203901596-9ddc49c7-fe36-4615-9d57-089cbb5550d7.png)


## Dashboard
In addition to the Microsoft powerpoint presentation, Tableau Public has been used to create interactive dashboard. 
https://public.tableau.com/views/superstore_sales_analysis_16681333746150/SalesinUS?:language=en-US&:display_count=n&:origin=viz_share_link

## Questions based on the analysis, the data can answer:
* The impact on profit if the product is sold without discount
* The year, month and market, which has more sales
* Quaterly breakdown of the products per year and yearly breakdown
* Sales by segment and country
* Profit by Market/Region

## Team Roles
Deliverable One - Triangle Role
1. Ambreen : Database(PostgreSQL)
* Created ERD and SQL Queries
* Sample data that mimics the expected the expected final database structure or schema
* Draft machine learning module is connected to the provisional database

2. Rajesh : Presentation
* Selected Topic
* Reason for topic selection
* Description of the source data

3. Ruba : Machine Learning Model 
* Takes in data in from the provisional database 
* Outputs label(s) for input data

All the team members did Github, which
* includes a README.md
* At least one branch for each team member
* Each team member has at least four commits from the duration of the first segment

Deliverable Two - Triangle Role
1.Ambreen : 
* Created SQL queries for creating tables
* Created SQL queries for analysis 
* Working on JavaScript and HTML for the webpage

2.Ruba : 
* Created Database in AWS and Postgres
* Extracted, transformed and loaded the dataset in Database
* Connected the database to Machine learning model

3.Rajesh :
* Finalised the analysis question the data can answer
* Found the potential outliers of the dataset for the machine learning model
* Created visualisation in tableau and worked on Presentation






