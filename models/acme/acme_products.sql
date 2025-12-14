with source as (
    SELECT * FROM {{ source('acme', 'locations') }}
)

SELECT 
    name as location_name,
    opened_at,
    tax_rate as payment_rate
FROM 
    source