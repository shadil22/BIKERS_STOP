

WITH cte AS (
    SELECT * FROM bike_share_yr_0 
    UNION 
    SELECT * FROM bike_share_yr_1
)
SELECT dteday,season,a.yr,hr,weekday,riders,rider_type,price,COGS,riders*price AS revenue,riders*price-COGS as profit FROM cte a left join cost_table b on a.yr=b.yr;


select * from cost_table
select * from cte;
SELECT * FROM bike_share_yr_0 ;