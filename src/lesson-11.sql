-- Challenge 1
SELECT cust_id
FROM Orders
WHERE order_num IN (
    SELECT OrderItems.order_num FROM OrderItems
    WHERE OrderItems.item_price >= 10
);

-- Challenge 2
SELECT
    cust_id,
    order_date
FROM Orders
WHERE
    order_num IN (
        SELECT OrderItems.order_num FROM OrderItems
        WHERE OrderItems.prod_id = 'BR01'
    )
ORDER BY order_date;

-- Challenge 3
SELECT cust_email
FROM Customers
WHERE cust_id IN (
    SELECT Orders.cust_id FROM Orders
    WHERE Orders.order_num IN (
        SELECT OrderItems.order_num FROM OrderItems
        WHERE OrderItems.prod_id = 'BR01'
    )
);

-- Challenge 4
SELECT
    cust_id,
    (
        SELECT SUM(OrderItems.quantity * OrderItems.item_price)
        FROM OrderItems
        WHERE OrderItems.order_num IN (
            SELECT Orders.order_num FROM Orders
            WHERE Orders.cust_id = Customers.cust_id
        )
    ) AS total_ordered
FROM Customers
ORDER BY total_ordered DESC;

-- Challenge 5
SELECT
    prod_name,
    (
        SELECT SUM(OrderItems.quantity) FROM OrderItems
        WHERE OrderItems.prod_id = Products.prod_id
    ) AS quant_sold
FROM Products;
