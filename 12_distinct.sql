USE BikeStores
go 


-- DISTINCT

-- it removes the duplicate values in the column from the result set.

-- SELECT DISTINCT
-- 	column_name1,
-- 	column_name2 ,
-- 	...
-- FROM
-- 	table_name;



-- NORMAL

SELECT
    city, first_name
FROM
    sales.customers
ORDER BY
    city;

-- DISTINCT

SELECT DISTINCT
    city, first_name
FROM
    sales.customers
ORDER BY
    city;


-- Two col

SELECT DISTINCT
    city,
    state
FROM
    sales.customers
ORDER BY 
    city, 
    state;