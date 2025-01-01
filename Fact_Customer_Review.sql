
-- Query for cleaning spacing issues in ReviewText column of the customer_reviews table

SELECT

	ReviewID,                 -- Selects unique identifier for each review
	CustomerID,               -- Selects unique identifier for each customer
	ProductID,                -- Selects unique identifier for each product
	ReviewDate,               -- Selects date for each review of the customer
	Rating,                   -- Selects rating information (numerical data - ordinal data) for each customer review
	REPLACE(ReviewText, '  ', ' ') AS ReviewText   -- Replaces the double spacing with single space

FROM
	
	dbo.customer_reviews;          -- Specifies the table of source
