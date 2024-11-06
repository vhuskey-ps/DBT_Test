{{ config(schema='${DBT_SCHEMA}') }}

with source_data as (
    select * FROM CUSTOMERS
)

select *
from source_data
