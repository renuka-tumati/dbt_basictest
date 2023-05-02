{{
    config(
        required_tests=None
    )
}}

select customer_id, sum(order_id) as order_count
from {{ ref('stg_orders') }}
group by customer_id 
order by customer_id