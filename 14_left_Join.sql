USE BikeStores
go 

SELECT  
	c.id candidate_id,
	c.fullname candidate_name,
	e.id employee_id,
	e.fullname employee_name
FROM 
	hr.candidates c
	LEFT JOIN hr.employees e 
		ON e.fullname = c.fullname;


--  null


SELECT  
    c.id candidate_id,
    c.fullname candidate_name,
    e.id employee_id,
    e.fullname employee_name
FROM 
    hr.candidates c
    LEFT JOIN hr.employees e 
        ON e.fullname = c.fullname
WHERE 
    e.id IS NULL;

-- right

SELECT  
    c.id candidate_id,
    c.fullname candidate_name,
    e.id employee_id,
    e.fullname employee_name
FROM 
    hr.candidates c
    RIGHT JOIN hr.employees e 
        ON e.fullname = c.fullname;


-- right null

SELECT  
    c.id candidate_id,
    c.fullname candidate_name,
    e.id employee_id,
    e.fullname employee_name
FROM 
    hr.candidates c
    RIGHT JOIN hr.employees e 
        ON e.fullname = c.fullname
WHERE
    c.id IS NULL;

--------------------------------------------------

SELECT
    product_name,
    order_id
FROM
    production.products p
LEFT JOIN sales.order_items o ON o.product_id = p.product_id
ORDER BY
    order_id;

--------------------------------------------------
SELECT
    product_name,
    order_id
FROM
    production.products p
LEFT JOIN sales.order_items o ON o.product_id = p.product_id
WHERE order_id IS NULL

--------------------------------------------------

SELECT
    p.product_name,
    o.order_id,
    i.item_id,
    o.order_date
FROM
    production.products p
	LEFT JOIN sales.order_items i
		ON i.product_id = p.product_id
	LEFT JOIN sales.orders o
		ON o.order_id = i.order_id
ORDER BY
    order_id;

--------------------------------------------------

SELECT
    product_name,
    order_id
FROM
    production.products p
LEFT JOIN sales.order_items o 
   ON o.product_id = p.product_id
WHERE order_id = 100
ORDER BY
    order_id;

--------------------------------------------------


SELECT
    * 
FROM
    production.products p
LEFT JOIN sales.order_items o ON o.product_id = p.product_id AND 

WHERE order_id = 100



SELECT
    p.product_id,
    product_name,
    order_id
FROM
    production.products p
    LEFT JOIN sales.order_items o 
         ON o.product_id = p.product_id AND 
            o.order_id = 100
ORDER BY
    order_id DESC;

--------------------------------------------------

