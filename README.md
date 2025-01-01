# UniSport-Company-Marketing-Analytics


## Table of Content
- [PROJECT OVERVIEW](#project-overview)
- [DATA SOURCE](#data-source)
- [TOOLS](#tools)
- [DATA CLEANING AND PREPARATION](#data-cleaning-and-preparation)
- [EXPLORATORY DATA ANALYSIS](#exploratory-data-analysis)
- [SUMMARY](#summary)
- [RECOMMENDATIONS](#recommendations)
- [LIMITATIONS](#limitations)

&nbsp;
___
### PROJECT OVERVIEW

Marketing analytics project is carried out for Unisport (imaginary) company for 2024 year. The project involves customer conversion details, 
social media analytics, and customer review details. The data used for the project covers data for three years, but the analytics focuses on only year of 2024.

UniSport, an online retail business, is facing reduced customer engagement and conversion rates despite launching several new online marketing campaigns. 
They are reaching out with a request to conduct a detailed analysis and identify areas for improvement in their marketing strategies. 

- ##### KEY POINTS TO FOCUS:
 1. Reduced Customer Engagement: The number of customer interactions and engagement with the site and marketing content has declined.
 2. Decreased Conversion Rates: Fewer site visitors are converting into paying customers.
 3. High Marketing Expenses: Significant investments in marketing campaigns are not yielding expected returns.
 4. Need for Customer Feedback Analysis: Understanding customer opinions about products and services is crucial for improving engagement and conversions.

### DATA SOURCE

Source data used for the analysis is: "PortfolioProject_MarketingAnalytics.bak" which can be found in the repository.

### TOOLS

- MS SQL: Data cleaning and EDA
- Python: Sentiment analysis
- MS Power BI: Visualization

### DATA CLEANING AND PREPARATION

For the initial data preparation phase the following activities were performed:

1. Data loading and inspection
2. Handling missing and duplicate values
3. Data cleaning and formatting

### EXPLORATORY DATA ANALYSIS

The main questions we are trying to find answers for:

- **Conversion Rate:** Percentage of website visitors who make a purchase.
- **Customer Engagement Rate:** Level of interaction with marketing content (clicks, likes, comments).
- **Customer Feedback Score:** Average rating from customer reviews.

&nbsp;
___
### SUMMARY

   ### 1. Overview
   
   - **Decreased Conversion Rates:** The conversion rate demonstrated a strong rebound in December, reaching 10.3%, despite a notable dip to 5.1% in October.
   - **Reduced Customer Engagement:** There is a decline in overall social media engagement, with views dropping throughout the year. While clicks and likes 
     are low compared to views, the click-through rate stands at 15.37%, meaning that engaged users are still interacting effectively.
   - **Customer Feedback Analysis:** Customer ratings have remained consistent, averaging around 3.7 throughout the year. Although stable, the average rating
     is below the target of 4.0, suggesting a need for focused improvements in customer satisfaction, for products below 3,5.

  
   ![image](https://github.com/user-attachments/assets/70197fe0-a931-4258-8cb5-9b1bd0d9d2b2)



   ### 2. Decreased conversion rates
   
   - **General Conversion Trend:** Throughout the year, conversion rates varied, with higher numbers of products converting successfully in months like January and September.
     This suggests that while some products had strong seasonal peaks, there is potential to improve conversions in lower-performing months through targeted interventions.
   - **Lowest Conversion Month:** May experienced the lowest overall conversion rate at 4.5% and 0% conversion rate for November, with no products standing out significantly
     in terms of conversion. This indicates a potential need to revisit marketing strategies or promotions during this period to boost performance.
   - **Highest Conversion Rates:** January recorded the highest overall conversion rate at 19.6%, driven significantly by the Ski Boots with a remarkable 150% conversion.
     This indicates a strong start to the year, likely fueled by seasonal demand and effective marketing strategies.
   
   
   ![image](https://github.com/user-attachments/assets/f509ff39-291a-4a9b-846a-a4cb1fe0e48a)


   ### 3. Reduced customer engagement
   
   - **Declining Views:** Views peaked in March and May but declined from August and on, indicating reduced audience engagement in the later half of the year.
   - **Low Interaction Rates:** Clicks and likes remained consistently low compared to views, suggesting the need for more engaging content or stronger calls to action.
   - **Content Type Performance:** Blog content drove the most views, especially in March and May, while social media and video content maintained steady but slightly lower
     engagement.
   
   ![image](https://github.com/user-attachments/assets/a2c15df4-a3a0-4cbe-9167-1ac533730794)
   
   
   ### 4. Customer feedback analysis
   
   - **Customer Ratings Distribution:** The majority of customer reviews are in the higher ratings, with 140 reviews at 4 stars and 135 reviews at 5 stars, indicating overall positive feedback. Lower ratings (1-2 stars) account for a smaller proportion, with 26 reviews at 1 star and 57 reviews at 2 stars.
   - **Sentiment Analysis:** Positive sentiment dominates with 275 reviews, reflecting a generally satisfied customer base. Negative sentiment is present in 82 reviews, with a smaller number of mixed and neutral sentiments, suggesting some areas for improvement but overall strong customer approval.
   - **Opportunity for Improvement:** The presence of mixed positive and mixed negative sentiments suggests that there are opportunities to convert those mixed experiences into more clearly positive ones, potentially boosting overall ratings. Addressing the specific concerns in mixed reviews could elevate customer satisfaction.
   
   ![image](https://github.com/user-attachments/assets/b83f30d8-c148-43c0-b9a9-ccd8c394812a)

&nbsp;
___
### RECOMMENDATIONS

**Increase Conversion Rates:**
Target High-Performing Product Categories: Focus marketing efforts on products with demonstrated high conversion rates, such as Kayaks, Ski Boots, and Baseball Gloves. Implement seasonal promotions or personalized campaigns during peak months (e.g., January and September) to capitalize on these trends.

**Enhance Customer Engagement:**
Revitalize Content Strategy: To turn around declining views and low interaction rates, experiment with more engaging content formats, such as interactive videos or user-generated content. Additionally, boost engagement by optimizing call-to-action placement in social media and blog content, particularly during historically lower-engagement months (September-December).

**Improve Customer Feedback Scores:**
Address Mixed and Negative Feedback: Implement a feedback loop where mixed and negative reviews are analyzed to identify common issues. Develop improvement plans to address these concerns. Consider following up with dissatisfied customers to resolve issues and encourage re-rating, aiming to move average ratings closer to the 4.0 target.


### LIMITATIONS

During the data cleaning process several NULL values identified in duration column of the customer journey data. The optimal solution to replace the NULL values was the average duration time partitioning over a specific date. Duplicate values were also removed from the data set.


### REFRENCES

- [Ali Ahmad - youtube channel](https://www.youtube.com/@aliahmad1987)
- [Web3 School - for SQL](https://www.w3schools.com/sql/default.asp)

