
-- PART 1 >>>> This part is the part for identifying and tagging duplicate values in the table

-- Common Table Expression to identify and tag duplicate records

WITH DuplicateRecords AS (

	Select 
	
		JourneyID,      -- Selects the unique identifier for each journey
		CustomerID,     -- Selects the unique identifier for each customer
		ProductID,      -- Selects the unique identifier for each product
		VisitDate,      -- Selects the date of a customer visited the website which helps to determine the timeline of customer interaction
		Stage,          -- Selects the stage of a customer journey (e.g. Awareness, consideration etc)
		Action,         -- Selects the action taken by a customer (e.g. view, click, purchase)
		Duration,       -- Selects the duration of an action or interaction
		-- Window function ROW_NUMBER () used to assign a unique row number to each record within the partition defined below
		ROW_NUMBER() OVER (
		    -- PARTITION BY groups the rows based on the specified columns that should be unique
			PARTITION BY CustomerID, ProductID, VisitDate, Stage, Action
			-- ORDER BY defines order of the rows within the partition, in this case it is ordered by JourneyID
			ORDER BY JourneyID
			) AS row_num     -- Creates a new column called "row_num" that holds number of occurence for each each partitioned above
	FROM 
		dbo.customer_journey  -- Source table
	)

-- Selects all records from CTE (DuplicateRecords) where row_num column > 1 that return us the duplicate values 

Select 
* 
FROM DuplicateRecords
WHERE row_num > 1          -- Where clause specifies that we need row_num column value which are greater than 1 to get the duplicates
ORDER BY JourneyID


-- PART 2 >>>> This part is the part for data visualization in Power BI

-- Outer query to replace the NULL values in duration column with avg_duration value from subquery

SELECT
	
	JourneyID,      -- Selects the unique identifier for each journey
	CustomerID,     -- Selects the unique identifier for each customer
	ProductID,      -- Selects the unique identifier for each product
	VisitDate,      -- Selects the date of a customer visited the website which helps to determine the timeline of customer interaction
	Stage,          -- Selects the stage of a customer journey (e.g. Awareness, consideration etc)
	Action,         -- Selects the action taken by a customer (e.g. view, click, purchase)
	COALESCE(Duration, avg_duration) AS Duration   -- Replaces the missing duration with the average duration calculated in the subquery

FROM
	(
		-- Subquery to process and clean the data
		SELECT	
			JourneyID,      -- Selects the unique identifier for each journey
			CustomerID,     -- Selects the unique identifier for each customer
			ProductID,      -- Selects the unique identifier for each product
			VisitDate,      -- Selects the date of a customer visited the website which helps to determine the timeline of customer interaction
			UPPER(Stage) AS Stage,  -- Converts the Stage values to uppercase for consistency in data analysis
			Action,         -- Selects the stage of a customer journey (e.g. Awareness, consideration etc)
			Duration,       -- Selects the duration of an action or interaction
			AVG(Duration) OVER (PARTITION BY VisitDate) AS avg_duration,  -- Calcualtes the avg duration for each visit date
			ROW_NUMBER() OVER (
				PARTITION BY CustomerID, ProductID, VisitDate, UPPER(Stage), Action  -- Groups by these columns to identify the duplicate values
				ORDER BY JourneyID      -- Orders by JourneyID to keep the first occurence of each duplicate
			) AS row_num            -- Assigns a row number to each row within the partition to identify duplicates
		FROM 
			dbo.customer_journey   -- Source table to extra data from
	) AS subquery     -- Names the subquery for reference in the outer query

WHERE 
	
	row_num = 1;       -- Keeps only the first occurrence of each duplicate group identified in the subquery