{{ config(materialized='table') }}

with source_data as (

    select 1 as id, "aa" as name
    union all
    select 2 as id, "bb" as name
    union all
    select null as id, "0" as name
)

select *
from source_data
where id is not null
