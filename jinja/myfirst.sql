{%- set category= "Furniture"-%}

select 
orderid,
case when category ='{{category}}' then orderprofit end as {{category}}_orderprofit
from {{ ref('stg_orders') }}