{%- set categories= ["Furniture", "Office","Technology"]-%}

select 
orderid,
{% for category in categories%}
sum(case when category ='{{category}}' then orderprofit end) as {{category}}_orderprofit
{% if not loop.last %}, {%endif%}
{%endfor%}

from {{ ref('stg_orders') }}
group by 1