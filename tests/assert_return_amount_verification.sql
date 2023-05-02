select amount
from {{ ref('fact_orders') }}
where status in ('returned','return_pending')
and amount < 0

