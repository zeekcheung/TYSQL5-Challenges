-- Challenge 1
SELECT
    Customers.cust_name,
    Orders.order_num
FROM Customers
INNER JOIN Orders ON Customers.cust_id = Orders.cust_id
ORDER BY Customers.cust_name;

-- Challenge 2
SELECT
    Customers.cust_name,
    Orders.order_num
FROM Customers
LEFT OUTER JOIN Orders ON Customers.cust_id = Orders.cust_id
ORDER BY Customers.cust_name;

-- Challenge 3
SELECT
    Products.prod_name,
    OrderItems.order_num
FROM Products
LEFT JOIN OrderItems ON Products.prod_id = OrderItems.prod_id
ORDER BY Products.prod_name;

-- Challenge 4
SELECT
    Products.prod_name,
    COUNT(OrderItems.order_num) AS orders
FROM Products
FULL JOIN OrderItems ON Products.prod_id = OrderItems.prod_id
GROUP BY Products.prod_name
ORDER BY Products.prod_name;

-- Challenge 5
SELECT
    Vendors.vend_id,
    COUNT(Products.prod_id) AS products
FROM Vendors
LEFT OUTER JOIN Products ON Vendors.vend_id = Products.vend_id
GROUP BY Vendors.vend_id
ORDER BY Vendors.vend_id;
