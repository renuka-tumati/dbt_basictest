with fact_orders as 
(select * from analytics.dbt_bronze.fact_orders)

select amount
from fact_orders
where status in ('completed','shipped','placed')
and amount < 0