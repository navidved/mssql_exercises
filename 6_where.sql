USE BikeStores
go 

SELECT
    *
FROM
    sales.customers
WHERE
    state = 'CA';



SELECT
TOP 10
    *
FROM
    sales.customers
WHERE
    state = 'CA';