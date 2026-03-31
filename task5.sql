-- ORIGINAL QUERY 105
WITH p24 AS ( 
	SELECT DISTINCT county, PAON, street, town 
	FROM ShortPricePaidData2024 
), 
p25 AS ( 
	SELECT DISTINCT county, PAON, street, town 
	FROM ShortPricePaidData2025 
) 
SELECT p24.county, COUNT(*) AS properties_sold_both_years 
FROM p24 JOIN p25 
	ON p24.county = p25.county 
	AND p24.PAON = p25.PAON 
	AND p24.street = p25.street 
	AND p24.town = p25.town 
GROUP BY p24.county
OPTION(MAXDOP 1); 


-- QUERY REWRITING

--88
SELECT county, COUNT(*) AS properties_sold_both_years
FROM (
    SELECT DISTINCT p24.county, p24.paon, p24.street, p24.town
    FROM ShortPricePaidData2024 p24
    WHERE EXISTS (
        SELECT 1
        FROM ShortPricePaidData2025 p25
        WHERE p25.county = p24.county
          AND p25.paon = p24.paon
          AND p25.street = p24.street
          AND p25.town = p24.town
    )
) t
GROUP BY county
ORDER BY county
OPTION(MAXDOP 1); 