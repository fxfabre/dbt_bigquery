SELECT
    order_id,
    customer_id,
    order_date,
    status
FROM {{ ref('stg_jaffle_shop__orders') }}
