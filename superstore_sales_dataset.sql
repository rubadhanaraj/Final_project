CREATE TABLE superstore_dataset(
		 "Row ID"  VARCHAR,
		"Order ID" VARCHAR,        
		"Order Date" VARCHAR,
		"Ship Date " VARCHAR,
		"Ship Mode" VARCHAR,
		"Customer ID" VARCHAR,
		"Customer Name" VARCHAR,
		"Segment"  VARCHAR,
		"City" VARCHAR,
		"State"  VARCHAR,
		"Country"  VARCHAR,
		"Postal Code" VARCHAR,
		"Market"  VARCHAR,                
		"Region"  VARCHAR,    		         
		"Product ID"  VARCHAR,
		"Category " VARCHAR,             
		"Sub-Category"  VARCHAR,        
		"Product Name"  VARCHAR,
		"Sales" NUMERIC,
		"Quantity" NUMERIC,
		"Discount" NUMERIC,
		"Profit" NUMERIC,
		"Shipping Cost" NUMERIC,
		"Order Priority" VARCHAR
);

SELECT * FROM superstore_dataset Limit 100;