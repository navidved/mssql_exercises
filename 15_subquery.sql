USE BikeStores

SELECT
    order_id,
    order_date,
    customer_id
FROM
    sales.orders
WHERE
    customer_id IN (
        SELECT
            customer_id
        FROM
            sales.customers
        WHERE
            city = 'New York'
    )
ORDER BY
    order_date DESC;



-- Nesting subquery
SELECT
    product_name,
    list_price
FROM
    production.products
WHERE
    list_price > (
        SELECT
            AVG (list_price)
        FROM
            production.products
        WHERE
            brand_id IN (
                SELECT
                    brand_id
                FROM
                    production.brands
                WHERE
                    brand_name = 'Strider'
                OR brand_name = 'Trek'
            )
    )
ORDER BY
    list_price;



-- SQL Server subquery types
-- You can use a subquery in many places:

-- In place of an expression
-- With IN or NOT IN
-- With ANY or ALL
-- With EXISTS or NOT EXISTS
-- In UPDATE, DELETE, orINSERT statement
-- In the FROM clause


SELECT
    order_id,
    order_date,
    (
        SELECT
            MAX (list_price)
        FROM
            sales.order_items i
        WHERE
            i.order_id = o.order_id
    ) AS max_list_price
FROM
    sales.orders o
order by order_date desc;



SELECT
    product_id,
    product_name
FROM
    production.products
WHERE
    category_id IN (
        SELECT
            category_id
        FROM
            production.categories
        WHERE
            category_name = 'Mountain Bikes'
        OR category_name = 'Road Bikes'
    );


    


SELECT
    product_name,
    list_price
FROM
    production.products
WHERE
    list_price >= ANY (
        SELECT
            AVG (list_price)
        FROM
            production.products
        GROUP BY
            brand_id
    )



-- The ALL operator returns TRUE if all comparison pairs (scalar_expression, vi) evaluate to TRUE; otherwise, it returns FALSE.
SELECT
    product_name,
    list_price
FROM
    production.products
WHERE
    list_price >= ALL (
        SELECT
            AVG (list_price)
        FROM
            production.products
        GROUP BY
            brand_id
    )


-- WHERE [NOT] EXISTS (subquery)
SELECT
    customer_id,
    first_name,
    last_name,
    city
FROM
    sales.customers c
WHERE
    EXISTS (
        SELECT
            customer_id
        FROM
            sales.orders o
        WHERE
            o.customer_id = c.customer_id
        AND YEAR (order_date) = 2017
    )
ORDER BY
    first_name,
    last_name;



SELECT
    customer_id,
    first_name,
    last_name,
    city
FROM
    sales.customers c
WHERE
    NOT EXISTS (
        SELECT
            customer_id
        FROM
            sales.orders o
        WHERE
            o.customer_id = c.customer_id
        AND YEAR (order_date) = 2017
    )
ORDER BY
    first_name,
    last_name;


-- SQL Server subquery in the FROM clause

SELECT 
   AVG(order_count) average_order_count_by_staff
FROM
(
    SELECT 
	staff_id, 
        COUNT(order_id) order_count
    FROM 
	sales.orders
    GROUP BY 
	staff_id
) t;


SELECT 
   AVG(order_count) average_order_count_by_staff
FROM
(
    SELECT 
	staff_id, 
        COUNT(order_id) order_count
    FROM 
	sales.orders
    GROUP BY 
	staff_id
) t;