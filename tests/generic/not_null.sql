{% test not_null(model, column_name) %}

select {{column_name}}
from {{model}}
where {{column_name}} is null and {{column_name}} <> '00000'

{% endtest %}