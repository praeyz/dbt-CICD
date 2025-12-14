with source as (
    SELECT * FROM {{ source('acme', 'raw_products') }}
)

SELECT 
    id as product_id,
    name as product_name,
    access_level,
    is_family_plan,
    ROUND(CAST(monthly_cost_usd/2 as float64),2) as half_monthly_cost_usd
FROM 
    source