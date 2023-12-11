USE BikeStores
go 


SELECT
    *
FROM
    sales.customers
WHERE
    state = 'CA'
ORDER BY
    last_name;

-- [ASC | DESC ]

SELECT
    first_name,
    last_name
FROM
    sales.customers
ORDER BY
    LEN(first_name) - LEN(last_name);