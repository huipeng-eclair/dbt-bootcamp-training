-- you can also use dbt_project.yml file to config it as a table
{{
    config(
        materialized='table'
    )
}}

select * 
from {{ source('globalmart', 'customer') }}