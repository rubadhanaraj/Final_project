# Superstore_sales_analysis
## Overview
The purpose of this project is to analyse the Superstore sales data between the years 2011 - 2014. The main objective of this project is to predict the future sales, profit and demand forecasting. The datset has been downloaded from https://www.kaggle.com/ 

## Presentation
https://utorvirtdatap-sxp6337.slack.com/files/U03LN7Q9QAH/F04BVF82909/project_details.pptx

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
PostgreSQL is the database we are using for this project. ERD and SQL queries have been written to analyse and create tables, which would be helpful in creating visualisations. 

## Machine Learning
We have been using ScikitLearn Maching Learning library to create machine learning models for predicting our data. Data has been split using training and testing split setup by 75:25 train test split ratio. The training dataset have been fit into Mutilple Linear Regression model.

## Dashboard
In addition to the Microsoft powerpoint presentation, Tableau Public has been used to create interactive dashboard. 
https://public.tableau.com/views/superstore_sales_analysis_16681333746150/SalesinUS?:language=en-US&:display_count=n&:origin=viz_share_link

## Team Roles
Deliverable One
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




