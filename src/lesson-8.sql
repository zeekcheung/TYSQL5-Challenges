-- Challenge 1
SELECT
    cust_id,
    cust_name,
    UPPER(SUBSTR(cust_contact, 1, 2) || SUBSTR(cust_city, 1, 3)) AS user_login
FROM Customers;

-- Challenge 2
SELECT
    order_num,
    order_date
FROM Orders
WHERE STRFTIME('%Y', order_date) = '2020' AND STRFTIME('%m', order_date) = '01'
ORDER BY order_date;
