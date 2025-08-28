-- Challenge 1
UPDATE Vendors
SET vend_state = UPPER(vend_state)
WHERE vend_country = 'USA';

UPDATE Customers
SET cust_state = UPPER(cust_state)
WHERE cust_country = 'USA';

-- Challenge 2
DELETE FROM Customers
WHERE cust_name = 'zeek';
