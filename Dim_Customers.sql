
-- SQL statement to join dim_customers table with dim_geography to enrich customer data with geography information

SELECT
	c.CustomerID,          -- Selects unique identifier for each customer from customers table aliased as "c"
	c.CustomerName,       -- Selects names of each cutomer customers table aliased as "c"
	c.Email,               -- Selects emails of each customer customers table aliased as "c"
	c.Gender,              -- Selects gender of each customer customers table aliased as "c"
	c.Age,				   -- Selects age of each customer customers table aliased as "c"
	g.Country,             -- Selects country of each customer geography table aliased as "g"
	g.City                 -- Selects city of each customer geography table aliased as "g"
FROM
	dbo.customers as c     -- Specifies the customers table with alias "c" (which is left table in join)
LEFT JOIN                  -- Specifies the join type based on the left table
-- RIGHT JOIN
-- INNER JOIN
-- FULL OUTER JOIN
	dbo.geography g        -- Specifies the geography table aliased "g" without optional "as" (right table)
ON c.GeographyID = g.GeographyID;        -- Connecting keys between the left (cusomers) and the right (geography) tables