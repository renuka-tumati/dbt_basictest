with fact_orders as 
(select * from analytics.dbt_bronze.fact_orders)

select amount
from fact_orders
where status in ('returned','return_pending')
and amount < 0