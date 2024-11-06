{{ config(materialized='table') }}

with source_data as (
    select * FROM CUSTOMERS
)

select *
from source_data
