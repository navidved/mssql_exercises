USE BikeStores
go 


SELECT TOP 10
    product_name, 
    list_price
FROM
    production.products
ORDER BY 
    list_price DESC;


-- Using TOP to return a percentage of rows

SELECT TOP 10 PERCENT
    product_name, 
    list_price
FROM
    production.products
ORDER BY 
    list_price DESC;

