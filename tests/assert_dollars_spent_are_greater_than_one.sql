
{{ config(enabled = false) }}

select 
    customer_id,
    avg(amount) as average_amount

from {{ ref('fact_orders') }}
group by customer_id
having average_amount < 1