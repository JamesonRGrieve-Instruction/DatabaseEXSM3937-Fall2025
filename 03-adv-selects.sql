-- database: ./aw.db
-- AVG (Average)
-- MIN (Minimum)
-- MAX (Maximum)
-- COUNT (Count)
SELECT
    AVG(OrderQty),
    MIN(OrderQty),
    MAX(OrderQty),
    AVG(UnitPrice),
    COUNT(*)
FROM
    SalesOrderDetail
WHERE
    ProductID = '864';

-- Get The Highest OrderQty For A Single Item:
SELECT
    ProductID,
    OrderQty
FROM
    SalesOrderDetail
ORDER BY
    OrderQty DESC
LIMIT
    1;

-- Too Rigid, Value Doesn't Update With Data:
SELECT
    ProductID,
    OrderQty
FROM
    SalesOrderDetail
WHERE
    OrderQty = '25';

-- Count Unique/Distinct Products 
-- Show A Count Of All Products That Were Sold At Least Once
SELECT
    COUNT(DISTINCT ProductID) AS 'Unique Product Sales'
FROM
    SalesOrderDetail;

-- LIKE is Kinda Like RegEx, Allowing For Partial Matches
SELECT
    *
FROM
    Product
WHERE
    Name LIKE 'Touring%';

-- In The Event You Need A Literal %
SELECT
    *
FROM
    Product
WHERE
    Name LIKE '%\%%' ESCAPE '\';

SELECT
    SUM(OrderQty)
FROM
    SalesOrderDetail;

-- Only Select Columns That Are Aggregates or Also In GROUP BY
-- WHERE Filters BEFORE Group By
-- HAVING Filters AFTER Group By
SELECT
    ProductID AS 'Product ID Group',
    SUM(OrderQty) AS 'Total Sales For Group'
FROM
    SalesOrderDetail
WHERE
    UnitPriceDiscount = 0
GROUP BY
    ProductID
HAVING
    SUM(OrderQty) > 25;

SELECT
    *
FROM
    SalesOrderDetail;

-- If we have multiple GROUP BYs, it will first group
-- by the first column, then it will check for multiple
-- values in the second column - if multiple values exist,
-- it will partition the group into sub-groups on that value.
SELECT
    ProductID AS 'Product ID Group',
    UnitPriceDiscount AS 'Discount',
    SUM(OrderQty) AS 'Total Sales For Group'
FROM
    SalesOrderDetail
GROUP BY
    ProductID,
    UnitPriceDiscount
HAVING
    SUM(OrderQty) > 25;
