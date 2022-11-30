
# Superstore_sales_analysis
## Overview
The purpose of this project is to analyse the Superstore sales data between the years 2011 - 2014. The main objective of this project is to predict the future sales, profit and demand forecasting. The datset has been downloaded from https://www.kaggle.com/ 

## Presentation
Link : https://docs.google.com/presentation/d/1merdH0H1nxjmDNvGtcrTGUFTuQAKXu_c/edit?usp=share_link&ouid=117207044042995402543&rtpof=true&sd=true

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
PostgreSQL is the local database we are using for this project. The original dataset has been loaded into Postgres database by changing the encoding of the data. Reference : (https://superuser.com/questions/290593/how-to-convert-character-encodings-on-windows). AWS Relational database was created and connected to Postgres and all the python codes have been written in the database. 

![image](https://user-images.githubusercontent.com/108298416/203901268-698d3208-08f9-4069-9e3c-3ae84be7eaa8.png)

Different analysis queries have been written in sql to analyse the data and to create a separate table for United states data for further analysis. The output from the queries written were useful in analysing the top 10 profitable products, Countries/Region which had loss in the sales and profitable category and sub-category of products. Sql has also been used for creating pie charts which visualises the analysis.

![image](https://user-images.githubusercontent.com/108298416/204631595-85ee8dc7-9fc3-4c72-87d5-06b083eb6cd3.png)

![image](https://user-images.githubusercontent.com/108298416/204632699-05d7d3a3-05c6-47f7-8935-4441bdac538c.png)

## Machine Learning
The  machine learning model is connected to the provisonal database using sql connection engine. For this particular project, the target variable would be the sales predictiomn for the future based on the data for the year 2011-2014. The correlation matrix and correlation heatmap has been created to check the correlations between the varibales.

![image](https://user-images.githubusercontent.com/108298416/204634308-d3495f68-7442-45fb-9868-3952da7c5309.png)

Things noticed in the dataset which could affect the accuracy of prediction includes, Copiers and Machines had outliers in sales column, so the sub_category columns which had rows with copiers and machines were dropped as a pre-processing step.

![image](https://user-images.githubusercontent.com/108298416/203901892-2fecc2d4-5751-4a30-aefa-525a4fc9d139.png)

We have been using ScikitLearn Maching Learning library to create machine learning models for predicting our data. Data has been split using training and testing split setup by 80:20 train test split ratio. The training dataset have been fit into Mutilple Linear Regression model. The r2 score of the scaled training data is 82% and the testing data is 79%

![image](https://user-images.githubusercontent.com/108298416/204158706-8cafe218-31ae-48b1-898b-dab4c36fe079.png)

## Dashboard
In addition to the Microsoft powerpoint presentation, Tableau Public has been used to create interactive dashboard and story using various charts and graphs by analysing the dataset. 
https://public.tableau.com/views/superstore_sales_analysis_16681333746150/Superstore_Sales_Profit_Analysis?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link

![Superstore_Sales_Analysis_Story1](https://user-images.githubusercontent.com/108298416/204448849-6037a8d1-4f32-402c-a6ec-219435366686.PNG)

![Yearly_Sales_Sub_Category](https://user-images.githubusercontent.com/108298416/204448891-4c5a2e5c-caff-4495-a936-4f182c3955c8.PNG)

![Superstore_Sales_Analysis_Dashboard](https://user-images.githubusercontent.com/108298416/204449030-d8fd0032-9c30-42c5-adcf-6e65ba73a6ea.PNG)



## Questions based on the analysis, the data can answer:
* The impact on profit if the product is sold without discount
* The year, month and market, which has more sales
* Quaterly breakdown of the products per year and yearly breakdown
* Sales by segment and country
* Profit by Market/Region
* Yearly sales/profit by category and sub_category
* How ship mode varies according to order priority

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






