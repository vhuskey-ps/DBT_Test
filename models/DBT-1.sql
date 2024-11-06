{{ config(
    schema='DBT_CLOUD',
    materialized='view'  
) }}

with source_data as (
    select *
    from {{ source('CUSTOMER_DATA', 'CUSTOMERS') }}
)

select *
from source_data

-- Uncomment the line below to remove records with null `id` values
-- where id is not null
