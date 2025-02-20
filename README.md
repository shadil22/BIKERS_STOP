# BIKERS_STOP
Project Overview: BIKERS_STOP

Data Import and Querying
•	Imported an Excel file into SQL Server.
•	Executed a SQL query to extract essential data:

WITH cte AS (
SELECT * FROM bike_share_yr_0
UNION
SELECT * FROM bike_share_yr_1
)
SELECT dteday, season, a.yr, hr, weekday, riders, rider_type, price, COGS,
riders * price AS revenue,
riders * price - COGS * riders AS profit
FROM cte a
LEFT JOIN cost_table b ON a.yr = b.yr;

Dashboard Creation

•	Connected SQL Server to Power BI.
•	Designed and developed a dashboard to visualize the data.
