{%macro cents_to_dollars(cents_column, decimal_places=2)%}
round({{cents_column}}/100, decimal_places)
{%endmacro%}