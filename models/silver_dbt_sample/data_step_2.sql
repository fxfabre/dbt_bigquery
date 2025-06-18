
-- Use the `ref` function to select from other models

select *
from {{ ref('data_step_1') }}
where id = 1
