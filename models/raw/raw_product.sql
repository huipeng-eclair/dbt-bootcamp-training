-- use dbt_project.yml file to config it as a table

select * 
from {{ source('globalmart', 'product') }}