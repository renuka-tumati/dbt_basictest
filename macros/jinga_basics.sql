
{%set user = 'rtumati'%}
{%set id=100 %}
{%set passwd='testpasswd'%}

{%set myArray = ['a1', 'a2', 'a3', 'a4']%}

{{user}} {{id}} {{passwd}}

{{user, id, passwd}}

{%- for char in myArray -%}
{{char}}

{%- endfor -%}

{%- set val_dict = {'a':'1', 'b':'2'} -%}
{%- for i in val_dict.keys() -%}
{{val_dict[i]}}
{%endfor%}

