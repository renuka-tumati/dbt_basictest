{%- set payment_methods = ['credit_card','coupon','bank_transfer','gift_card']-%}



with payments as (
    select * from {{ ref('stg_payments') }}
),
orders_by_pay_methods as (
    select order_id,    
    {% for pay_method in payment_methods -%}
    sum (case when payment_method= '{{pay_method}}' then amount else 0 end) as {{pay_method}}_amount
    {%- if not loop.last -%}
     ,
    {%- endif %}
    {%endfor -%}
    
    from payments
    where status = 'success'
    group by order_id
)
select * from orders_by_pay_methods