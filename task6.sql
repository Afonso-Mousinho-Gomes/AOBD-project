--READ UNCOMMITTED
--2
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRANSACTION

SELECT locality, AVG(price) AS average_new_property_price 
FROM ShortPricePaidData2025 
GROUP BY locality 
ORDER BY average_new_property_price DESC; 

--4
COMMIT


--READ COMMITTED
--1
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

BEGIN TRANSACTION

SELECT locality, AVG(price) AS average_new_property_price 
FROM ShortPricePaidData2025 
GROUP BY locality 
ORDER BY average_new_property_price DESC; 

--3
SELECT locality, AVG(price) AS average_new_property_price 
FROM ShortPricePaidData2025 
GROUP BY locality 
ORDER BY average_new_property_price DESC; 



--SERIALIZABLE: PREVENT DIRTY READ
--2
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRANSACTION

SELECT locality, AVG(price) AS average_new_property_price 
FROM ShortPricePaidData2025 
GROUP BY locality 
ORDER BY average_new_property_price DESC; 

--4
COMMIT

--SERIALIZABLE: PREVENT UNREPEATABLE READ
--1
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

BEGIN TRANSACTION

SELECT locality, AVG(price) AS average_new_property_price 
FROM ShortPricePaidData2025 
GROUP BY locality 
ORDER BY average_new_property_price DESC; 

--3
SELECT locality, AVG(price) AS average_new_property_price 
FROM ShortPricePaidData2025 
GROUP BY locality 
ORDER BY average_new_property_price DESC; 