select *
from {{ ref('incremental_raw_orders') }}
where to_date (ORDERDATE, 'yyyy/mm/dd') >to_date ('2020/01/01', 'yyyy/mm/dd');