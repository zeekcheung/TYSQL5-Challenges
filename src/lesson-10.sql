-- Challenge1
SELECT
    order_num,
    COUNT(*) AS order_lines
FROM OrderItems
GROUP BY order_num
ORDER BY order_lines;

-- Challenge 2
SELECT
    vend_id,
    MIN(prod_price) AS cheapest_item
FROM Products
GROUP BY vend_id
ORDER BY cheapest_item;

-- Challenge 3
SELECT order_num
FROM OrderItems
GROUP BY order_num
HAVING SUM(quantity) >= 100
ORDER BY order_num;

-- Challenge 4
SELECT
    order_num,
    SUM(item_price * quantity) AS total_price
FROM OrderItems
GROUP BY order_num
HAVING SUM(item_price * quantity) >= 1000
ORDER BY order_num;

-- Challenge 5
SELECT
    order_num,
    COUNT(*) AS items
FROM OrderItems
GROUP BY order_num
HAVING COUNT(*) >= 3
ORDER BY items, order_num;
