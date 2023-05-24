
  
    

        create or replace transient table analytics.dbt_bronze.fact_orders
         as
        (with
    orders as (select * from analytics.dbt_bronze.stg_orders),
    payment as (select * from analytics.dbt_bronze.stg_payments),
    final as (select order_id, customer_id, amount, status from orders left join payment using (order_id))
select *
from final
        );
      
  