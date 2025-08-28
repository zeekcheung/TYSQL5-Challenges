-- Challenge 1
SELECT
    prod_id,
    quantity
FROM OrderItems
WHERE quantity = 100
UNION
SELECT
    prod_id,
    quantity
FROM OrderItems
WHERE prod_id LIKE 'BNBG%'
ORDER BY prod_id;

-- Challenge 2
SELECT
    prod_id,
    quantity
FROM OrderItems
WHERE quantity = 100 OR prod_id LIKE 'BNBG%'
ORDER BY prod_id;

-- Challenge 3
SELECT prod_name
FROM Products
UNION
SELECT cust_name
FROM Customers
ORDER BY prod_name;

-- Challenge 4
SELECT
    cust_name,
    cust_contact,
    cust_email
FROM Customers
WHERE cust_state = 'MI'
UNION
SELECT
    cust_name,
    cust_contact,
    cust_email
FROM Customers
WHERE cust_state = 'IL'
ORDER BY cust_name;
