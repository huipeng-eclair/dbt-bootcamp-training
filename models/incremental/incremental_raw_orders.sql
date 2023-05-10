{{
    config(
        materialized='incremental', unique_key="ORDERDATE"
    )
}}

select *
from {{ source('globalmart', 'orders') }}
where to_date (ORDERDATE, 'yyyy/mm/dd')<= current_date

{% if is_incremental() %}
    and to_date (ORDERDATE, 'yyyy/mm/dd') > (select max(to_date (ORDERDATE, 'yyyy/mm/dd')) from {{this}})
{% endif %}