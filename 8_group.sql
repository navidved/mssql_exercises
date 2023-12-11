USE BikeStores
go 


SELECT
    city,
    COUNT(*) as customer_count
    -- MAX(first_name) as max_first_name
FROM
    sales.customers
GROUP BY
    city


SELECT 
    [state],
    [city],
    COUNT(*) as customers_count
FROM 
    sales.customers
GROUP BY 
    [state], [city]
ORDER BY 
    [state], [city]


SELECT
    customer_id,
    YEAR(order_date) order_year,
    COUNT(*) AS order_count
FROM
    sales.orders
WHERE
    customer_id IN (1, 2, 3)
GROUP BY
    customer_id,
    YEAR(order_date)
ORDER BY
    customer_id;



SELECT DISTINCT
    customer_id,
    YEAR(order_date) order_year
FROM
    sales.orders
WHERE
    customer_id IN (1, 2)
ORDER BY
    customer_id;


SELECT
    customer_id,
    YEAR (order_date) order_year,
    COUNT (order_id) order_placed
FROM
    sales.orders
WHERE
    customer_id IN (1, 2)
GROUP BY
    customer_id,
    YEAR (order_date)
ORDER BY
    customer_id; 



SELECT
    city,
    COUNT (customer_id) customer_count
FROM
    sales.customers
GROUP BY
    city
ORDER BY
    city;

-- with join


SELECT
    brand_name,
    MIN(list_price) min_price,
    MAX(list_price) max_price
FROM
    production.products p
INNER JOIN production.brands b ON b.brand_id = p.brand_id
GROUP BY
    brand_name


SELECT
    brand_name,
    MIN (list_price) min_price,
    MAX (list_price) max_price
FROM
    production.products p
INNER JOIN production.brands b ON b.brand_id = p.brand_id
WHERE
    model_year = 2018
GROUP BY
    brand_name
ORDER BY
    brand_name;


SELECT
    brand_name,
    AVG (list_price) avg_price
FROM
    production.products p
INNER JOIN production.brands b ON b.brand_id = p.brand_id
WHERE
    model_year = 2017
GROUP BY
    brand_name
ORDER BY
    brand_name;


SELECT
    order_id,
    SUM (
        quantity * list_price * (1 - discount)
    ) net_value,
    AVG(list_price) AS avg_price,
    COUNT(*) AS order_items_count
FROM
    sales.order_items
GROUP BY
    order_id;

-- having

SELECT
    customer_id,
    YEAR (order_date),
    COUNT (order_id) order_count
FROM
    sales.orders
GROUP BY
    customer_id,
    YEAR (order_date)
HAVING
    COUNT (order_id) >= 2
ORDER BY
    customer_id;


SELECT
    order_id,
    SUM (
        quantity * list_price * (1 - discount)
    ) net_value
FROM
    sales.order_items
GROUP BY
    order_id
HAVING
    SUM (
        quantity * list_price * (1 - discount)
    ) > 20000
ORDER BY
    net_value;


SELECT
    category_id,
    MAX (list_price) max_list_price,
    MIN (list_price) min_list_price
FROM
    production.products
GROUP BY
    category_id
HAVING
    MAX (list_price) > 4000 AND MIN (list_price) < 500;


SELECT
    c.category_name,
    AVG (p.list_price) avg_list_price
FROM
    production.products p
INNER JOIN production.categories c 
ON c.category_id = p.category_id
GROUP BY
    c.category_name
HAVING
    AVG (list_price) BETWEEN 500 AND 1000;


