-- Challenge 1
SELECT
    Customers.cust_name,
    Orders.order_num
FROM Customers, Orders
WHERE Customers.cust_id = Orders.cust_id
ORDER BY Customers.cust_name, Orders.order_num;

SELECT
    Customers.cust_name,
    Orders.order_num
FROM Customers
INNER JOIN Orders ON Customers.cust_id = Orders.cust_id
ORDER BY Customers.cust_name, Orders.order_num;

-- Challenge 2
SELECT
    Customers.cust_name,
    Orders.order_num,
    (
        SELECT SUM(OrderItems.item_price * OrderItems.quantity)
        FROM OrderItems
        WHERE OrderItems.order_num = Orders.order_num
    ) AS order_total
FROM Customers, Orders
WHERE Customers.cust_id = Orders.cust_id
ORDER BY Customers.cust_name, Orders.order_num;

SELECT
    Customers.cust_name,
    Orders.order_num,
    SUM(OrderItems.item_price * OrderItems.quantity) AS order_total
FROM Customers, Orders, OrderItems
WHERE
    Customers.cust_id = Orders.cust_id
    AND Orders.order_num = OrderItems.order_num
GROUP BY OrderItems.order_num
ORDER BY Customers.cust_name, Orders.order_num;

-- Challenge 3
SELECT
    Orders.cust_id,
    Orders.order_date
FROM Orders, OrderItems
WHERE
    OrderItems.order_num = Orders.order_num
    AND OrderItems.prod_id = 'BR01'
ORDER BY Orders.order_date;

SELECT
    Orders.cust_id,
    Orders.order_date
FROM Orders
INNER JOIN OrderItems ON Orders.order_num = OrderItems.order_num
WHERE OrderItems.prod_id = 'BR01'
ORDER BY Orders.order_date;

-- Challenge 4
SELECT Customers.cust_email
FROM Customers
INNER JOIN Orders ON Customers.cust_id = Orders.cust_id
INNER JOIN OrderItems ON Orders.order_num = OrderItems.order_num
WHERE OrderItems.prod_id = 'BR01';

-- Challenge 5
SELECT
    Customers.cust_name,
    SUM(OrderItems.quantity * OrderItems.item_price) AS total_spent
FROM Customers, Orders, OrderItems
WHERE
    Customers.cust_id = Orders.cust_id
    AND Orders.order_num = OrderItems.order_num
GROUP BY Customers.cust_name
HAVING SUM(OrderItems.quantity * OrderItems.item_price) >= 1000
ORDER BY Customers.cust_name;

SELECT
    Customers.cust_name,
    SUM(OrderItems.quantity * OrderItems.item_price) AS total_spent
FROM Customers
INNER JOIN Orders ON Customers.cust_id = Orders.cust_id
INNER JOIN OrderItems ON Orders.order_num = OrderItems.order_num
GROUP BY Customers.cust_name
HAVING SUM(OrderItems.quantity * OrderItems.item_price) >= 1000
ORDER BY Customers.cust_name;
