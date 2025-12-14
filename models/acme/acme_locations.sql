with source as (
    SELECT * from {{source("acme", "raw_loacations")}}
)

SELECT
    name as location_name,
    opened_at as opened_date,
    ROUND(tax_rate,2)
FROM 
    source
    