SELECT
    customer_id,
    first_name,
    last_name
FROM {{ ref('stg_jaffle_shop__customers') }}
