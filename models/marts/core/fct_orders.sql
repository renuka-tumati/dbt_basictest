with
    orders as (select * from {{ ref("stg_orders") }}),
    payment as (select * from {{ ref("stg_payments") }}),
    final as (select order_id, customer_id, amount from orders left join payment using (order_id))
select *
from final
