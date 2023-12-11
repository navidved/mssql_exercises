USE BikeStores
go 


SELECT
    product_id,
    product_name,
    category_id,
    model_year,
    list_price
FROM
    production.products
WHERE
    category_id = 1 AND model_year = 2018
ORDER BY
    list_price DESC;

--------------------------------------

SELECT
    product_id,
    product_name,
    category_id,
    model_year,
    list_price
FROM
    production.products
WHERE
    list_price > 300 AND model_year = 2018
ORDER BY
    list_price DESC;

--------------------------------------

SELECT
    product_id,
    product_name,
    category_id,
    model_year,
    list_price
FROM
    production.products
WHERE
    -- list_price BETWEEN 1899.00 AND 1999.99
    list_price >= 1899.00 and list_price <= 1999.99
ORDER BY
    list_price DESC;

---------------------------------------

SELECT
    product_id,
    product_name,
    category_id,
    model_year,
    list_price
FROM
    production.products
WHERE
    -- list_price IN (299.99, 369.99, 489.99)
    list_price = 299.99 OR list_price = 369.99  OR list_price = 489.99
ORDER BY
    list_price DESC;

---------------------------------------

SELECT
    product_id,
    product_name,
    category_id,
    model_year,
    list_price
FROM
    production.products
WHERE
    product_name LIKE '%Electra%'
    -- product_name = 'Cruiser'
ORDER BY
    list_price;

---------------------------------------

SELECT
    customer_id,
    first_name,
    last_name,
    phone
FROM
    sales.customers
WHERE
    phone IS NOT NULL
ORDER BY
    first_name,
    last_name;

---------------------------------------

-- phone IS NOT NULL
