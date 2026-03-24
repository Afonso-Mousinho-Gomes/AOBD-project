SELECT p24.district, 
       p24.avg_price AS avg_2024, 
       p25.avg_price AS avg_2025 
FROM (
    SELECT district, AVG(CAST(price AS BIGINT)) AS avg_price
    FROM ShortPricePaidData2024
    GROUP BY district
) p24
JOIN (
    SELECT district, AVG(CAST(price AS BIGINT)) AS avg_price
    FROM ShortPricePaidData2025
    GROUP BY district
) p25
ON p24.district = p25.district
WHERE p25.avg_price > p24.avg_price
OPTION (LOOP JOIN, HASH GROUP);



SELECT p24.district, 
       p24.avg_price AS avg_2024, 
       p25.avg_price AS avg_2025 
FROM (
    SELECT district, AVG(CAST(price AS BIGINT)) AS avg_price
    FROM ShortPricePaidData2024
    GROUP BY district
) p24
JOIN (
    SELECT district, AVG(CAST(price AS BIGINT)) AS avg_price
    FROM ShortPricePaidData2025
    GROUP BY district
) p25
ON p24.district = p25.district
WHERE p25.avg_price > p24.avg_price
OPTION (HASH JOIN, HASH GROUP);



SELECT p24.district, 
       p24.avg_price AS avg_2024, 
       p25.avg_price AS avg_2025 
FROM (
    SELECT district, AVG(CAST(price AS BIGINT)) AS avg_price
    FROM ShortPricePaidData2024
    GROUP BY district
) p24
JOIN (
    SELECT district, AVG(CAST(price AS BIGINT)) AS avg_price
    FROM ShortPricePaidData2025
    GROUP BY district
) p25
ON p24.district = p25.district
WHERE p25.avg_price > p24.avg_price
OPTION (MERGE JOIN, HASH GROUP);




SELECT p24.district, 
       p24.avg_price AS avg_2024, 
       p25.avg_price AS avg_2025 
FROM (
    SELECT district, AVG(CAST(price AS BIGINT)) AS avg_price
    FROM ShortPricePaidData2024
    GROUP BY district
) p24
JOIN (
    SELECT district, AVG(CAST(price AS BIGINT)) AS avg_price
    FROM ShortPricePaidData2025
    GROUP BY district
) p25
ON p24.district = p25.district
WHERE p25.avg_price > p24.avg_price
OPTION (LOOP JOIN, ORDER GROUP);



SELECT p24.district, 
       p24.avg_price AS avg_2024, 
       p25.avg_price AS avg_2025 
FROM (
    SELECT district, AVG(CAST(price AS BIGINT)) AS avg_price
    FROM ShortPricePaidData2024
    GROUP BY district
) p24
JOIN (
    SELECT district, AVG(CAST(price AS BIGINT)) AS avg_price
    FROM ShortPricePaidData2025
    GROUP BY district
) p25
ON p24.district = p25.district
WHERE p25.avg_price > p24.avg_price
OPTION (HASH JOIN, ORDER GROUP);




SELECT p24.district, 
       p24.avg_price AS avg_2024, 
       p25.avg_price AS avg_2025 
FROM (
    SELECT district, AVG(CAST(price AS BIGINT)) AS avg_price
    FROM ShortPricePaidData2024
    GROUP BY district
) p24
JOIN (
    SELECT district, AVG(CAST(price AS BIGINT)) AS avg_price
    FROM ShortPricePaidData2025
    GROUP BY district
) p25
ON p24.district = p25.district
WHERE p25.avg_price > p24.avg_price
OPTION (MERGE JOIN, ORDER GROUP);