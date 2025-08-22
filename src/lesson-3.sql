-- Challenge 1
SELECT cust_name
FROM Customers
ORDER BY cust_name DESC;

-- Challenge 2
SELECT
    cust_id,
    order_num
FROM Orders
ORDER BY cust_id ASC, order_date DESC;

-- Challenge 3
SELECT
    quantity,
    item_price
FROM OrderItems
ORDER BY quantity DESC, item_price DESC;

-- Challenge 4
SELECT vend_name
FROM Vendors
ORDER BY vend_name DESC;
