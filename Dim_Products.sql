
-- Query to categorize products based on their price

SELECT

	ProductID,                -- Selects the unique identifier for each product
	ProductName,              -- Selects the name of each product
	Price,                    -- Selects the price of each product

	CASE                      -- Case statement: Categorizes the products into price categories: "Low", "Medium", and "High"   

		WHEN Price < 50 THEN 'Low'        -- Sets the price category to "Low" when the price is below 50
		WHEN Price BETWEEN 50 AND 200 THEN 'Medium'   -- Sets the price category to "Medium" when the price is between 50 and 200
		ELSE 'High'                       -- Sets the price category to "High" in all other cases

	END AS PriceCategory        -- Adds all above categories in a new column called "PriceCategory"



FROM dbo.products;               -- Specifies the source table to select the data from