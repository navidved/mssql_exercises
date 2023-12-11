USE BikeStores
go 


SELECT
    MAX(state) as state_name,
    city,
    COUNT (*) as customers_count
FROM
    sales.customers
WHERE
    [state] = 'CA'
GROUP BY
    city
HAVING
    COUNT(*) >= 10
ORDER BY
    MAX(state), city