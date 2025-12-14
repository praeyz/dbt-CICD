with source as (
        select * from {{ source('swm', 'raw_cash_transactions') }}
  )

SELECT
    id as cash_id,
    billed_month as month_billed,
    customer_id
FROM source