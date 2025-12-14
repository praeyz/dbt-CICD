with source as (
        select * from {{ source('swm', 'raw_billing_transactions') }}
  ),
  renamed as (
      select
        customer_id,
        membership_id,
        location_id,
        CAST(split(billed_month, "-")[0] as int) as billed_year,
        CAST(split(billed_month, "-")[1] as int) as billed_month,
        amount_usd,
        status,
        created_at as billing_created_date


      from source
  )
  select * from renamed
    