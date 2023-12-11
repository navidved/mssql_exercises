-- ORDER BY column_list [ASC |DESC]
-- OFFSET offset_row_count {ROW | ROWS}
-- FETCH {FIRST | NEXT} fetch_row_count {ROW | ROWS} ONLY

USE BikeStores
go 

-- OFFSET
SELECT
    product_id,
    product_name,
    list_price
FROM
    production.products
ORDER BY
    product_id

OFFSET 3 ROWS;


-- NEXT
SELECT
    product_id,
    product_name,
    list_price
FROM
    production.products
ORDER BY
    product_id

OFFSET 3 ROWS 
FETCH NEXT 10 ROWS ONLY;