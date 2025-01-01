
-- Query to clean and normalize the engagement_data table

SELECT

	EngagementID,                  -- Selects unique identifier for each customer engagement
	ContentID,                    -- Selects unique identifier for each content
	CampaignID,                   -- Selects unique identifier for each campaign
	ProductID,                     -- Selects unique identifier for each product
	UPPER(REPLACE(ContentType, 'SocialMedia', 'Social Media')) AS ContentType,  -- Replacees 'SocialMedia' with 'Social Media' and changes to upper case
	LEFT(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined) -1) AS Views, -- Extracts left characters in the column up to '-' and places in Views colum
	RIGHT(ViewsClicksCombined, LEN(ViewsClicksCombined) - CHARINDEX('-', ViewsClicksCombined)) AS Clicks,  -- Extracts right characters up to '-' and places in Clicks colum
	Likes,                         -- Selects number of likes for each engagement
	FORMAT(CONVERT(date, EngagementDate), 'dd.MM.yyyy') AS EngagementDate   -- First converts EngagementDate to Date data type and then formats it to "dd.MM.yyyy"

FROM
	dbo.engagement_data             -- Source table for querying above data
WHERE
	ContentType != 'Newsletter';    -- Sorts out the contentType "Newsletter"