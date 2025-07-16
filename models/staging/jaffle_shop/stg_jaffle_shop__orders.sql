{{ config(alias='orders') }}

-- models/staging/jaffle_shop/stg_jaffle_shop__orders.sql

SELECT
    id AS order_id,
    user_id AS customer_id,
    order_date,
    status
FROM {{ source('jaffle_shop', 'orders') }}
