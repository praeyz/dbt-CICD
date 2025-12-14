with source as (
    SELECT * from {{source("acme", "locations")}}
)

SELECT
    name as location_name,
    opened_at as opened_date,
    tax_rate
FROM 
    source
    