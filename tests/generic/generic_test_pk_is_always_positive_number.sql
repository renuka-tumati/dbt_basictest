{% test generic_test_pk_is_always_positive_number(model, column_name) %}

select {{column_name}}
from {{model}}
where {{column_name}} <= 0

{% endtest %}