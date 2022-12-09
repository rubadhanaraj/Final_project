
# Superstore_sales_analysis
## Overview
The purpose of this project is to analyse the Superstore sales data between the years 2011 - 2014. The main objective of this project is to predict the future sales, profit and demand forecasting. The datset has been downloaded from https://www.kaggle.com/ 

## Presentation
Link : https://docs.google.com/presentation/d/1b_aHmEvlkJONdjnpPOcm4LzX7xnWb7s9/edit?usp=share_link&ouid=117207044042995402543&rtpof=true&sd=true

## Description of rudimentary EDA
The superstore sales dataset has 24 columns and 52000 rows in flat file format. The data has been extracted from the database for cleaning and exploratory data analysis. The data has been cleaned with the Python using Pandas library.The imported CSV in Jupyter Notebook has been cleaned, transformed and loaded into the database as cleaned dataset. The exploratory data analysis started by
* Importing dependencies
* Reading data into a DataFrame
* Removing missing values, outliers
* Dropping unneccesary columns which has null values
* Re-indexing and reformatting our data
* Renaming the columns
* Descriptive statistics
* Graphical representation such as Box Plot, Correlation heat map

## Database
PostgreSQL is the local database we are using for this project. The original dataset has been loaded into Postgres database by changing the encoding of the data. Reference : (https://superuser.com/questions/290593/how-to-convert-character-encodings-on-windows). AWS Relational database was created and connected to Postgres and all the python codes have been written in the database. 

![image](https://user-images.githubusercontent.com/108298416/203901268-698d3208-08f9-4069-9e3c-3ae84be7eaa8.png)

Different analysis queries have been written in sql to analyse the data and to create a separate table for United states data for further analysis. The output from the queries written were useful in analysing the top 10 profitable products, Countries/Region which had loss in the sales and profitable category and sub-category of products. 

![image](https://user-images.githubusercontent.com/108298416/204631595-85ee8dc7-9fc3-4c72-87d5-06b083eb6cd3.png)

## Machine Learning
The  machine learning model is connected to the provisonal database using sql connection engine.

![image](https://user-images.githubusercontent.com/108298416/203901892-2fecc2d4-5751-4a30-aefa-525a4fc9d139.png)

For this particular project, the target variable would be the sales predictiomn for the future based on the data for the year 2011-2014. The correlation matrix and correlation heatmap has been created to check the correlations between the varibales.

![image](https://user-images.githubusercontent.com/108298416/204634308-d3495f68-7442-45fb-9868-3952da7c5309.png)

* Feature Selection : Out of 24 columns, 11 columns were selected as features. Team has decided that the machine learning model should predict sales as the project is about the analysis of sales trend. With sales as a target, the model uses 11 columns, which are Segment, Category, Sub_Category, Market, Region, Shipping_cost, Country, Order_priority, Quantity, Ship_mode and Per_unit_selling_price.
* Data Preprocessing : There were 8 categorical variable columns and 3 numeric columns in the features. The categorical columns were encoded using one hot encoder and converted into arrays. After encoding, the encoded columns and the numeric columns were concatenated using numpy.
* Training and Testing Data : Data has been split using training and testing split setup by 80:20 train test split ratio.
* Choice of the model : We have been using ScikitLearn Maching Learning library to create machine learning models for predicting our data.Different machine learning models which includes, Linear regression, Random forest classification, Deep nural network were tried for the better accuracy. Since the target is Sales and its a continuous variable, Multiple Linear Regression model has been chosen  The training dataset have been fit into Mutilple Linear Regression model. The r2 score of the scaled training data is 82% and the testing data is 79%

![image](https://user-images.githubusercontent.com/108298416/204158706-8cafe218-31ae-48b1-898b-dab4c36fe079.png)

## Dashboard
In addition to the Microsoft powerpoint presentation, Tableau Public has been used to create interactive dashboard and story using various charts and graphs by analysing the dataset. 
https://public.tableau.com/views/superstore_sales_analysis_16681333746150/Superstore_Sales_Profit_Analysis?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link

![Superstore_Sales_Analysis_Story1](https://user-images.githubusercontent.com/108298416/204448849-6037a8d1-4f32-402c-a6ec-219435366686.PNG)

![Sales by product and sub-category per year](https://user-images.githubusercontent.com/108298416/206036438-b0dcb930-1948-4f5b-9894-6124fe045540.PNG)

![Superstore_Sales_Analysis_Dashboard](https://user-images.githubusercontent.com/108298416/204449030-d8fd0032-9c30-42c5-adcf-6e65ba73a6ea.PNG)

The Machine learning model was deployed in a front end web page using Flask application. Using Bootstrap, a responsive web app was created which is compatible with any device and the model is deployed for the prediction. The user can input all the values which was selected as features. The python code will take the values and insert the values into the trained model which is exisitng as pickle file and the predictions will be made.

![image](https://user-images.githubusercontent.com/108298416/206581294-ab17c571-12a2-4c16-8a0d-c1960e7ccbba.png)

## Questions based on the analysis, the data can answer:
* The impact on profit if the product is sold without discount
* The year, month and market, which has more sales
* Quaterly breakdown of the products per year and yearly breakdown
* Sales by segment and country
* Profit by Market/Region
* Yearly sales/profit by category and sub_category
* How ship mode varies according to order priority

## Team Roles - Triangle Role for all the deliverables

1. Ambreen 
* Created SQL queries for creating tables
* Created SQL queries for analysis 
* Created HTML code for the front end webpage
* Deployed the webpage using Flask

2. Rajesh 
* Created presentation which covers Selected Topic, Reason for topic selection and Description of the source data
* Finalised the analysis question the data can answer
* Found the potential outliers of the dataset for the machine learning model
* Created visualisation in tableau and worked on Presentation


3. Ruba
* Created a AWS Postgres database and imported the dataset into database
* Extracted, transformed and loaded the dataset in Database
* Connected the database to Machine learning model
* Created working code for Machine Learning model and deployed the ML model using flask application


All the team members did Github, which
* includes a README.md
* At least one branch for each team member
* Each team member has at least four commits from the duration of the first segment










