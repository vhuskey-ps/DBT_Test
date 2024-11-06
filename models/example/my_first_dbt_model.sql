{{ config(materialized='table') }}

with source_data as (
    select * VICTOR_HUSKEY.CUSTOMERS_DATA.CUSTOMERS
)

select *
from source_data
