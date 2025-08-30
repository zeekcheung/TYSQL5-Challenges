-- Challenge 1
DROP VIEW IF EXISTS CustomersWithOrders;

CREATE VIEW CustomersWithOrders AS
SELECT Customers.* FROM Customers
INNER JOIN Orders ON Customers.cust_id = Orders.cust_id;

-- Challenge 2
DROP VIEW IF EXISTS OrderItemsExpanded;

CREATE VIEW OrderItemsExpanded AS
SELECT
    order_num,
    prod_id,
    quantity,
    item_price,
    quantity * item_price AS expanded_price
FROM OrderItems
ORDER BY order_num;
