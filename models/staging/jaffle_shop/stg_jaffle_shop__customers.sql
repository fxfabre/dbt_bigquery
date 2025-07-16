{{ config(alias='customers') }}

-- models/staging/jaffle_shop/stg_jaffle_shop__customers.sql

SELECT
    id AS customer_id,
    first_name,
    last_name
FROM {{ source('jaffle_shop', 'customers') }}
