-- Challenge 1
INSERT INTO Customers (cust_id, cust_name, cust_country, cust_city)
VALUES ('1000000007', 'zeek', 'China', 'Guangzhou');

-- Challenge 2
CREATE TABLE OrdersBackup AS SELECT * FROM Orders;
CREATE TABLE OrderItemsBackup AS SELECT * FROM OrderItems;
