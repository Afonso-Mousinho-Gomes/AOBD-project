SELECT locality, AVG(price) AS average_new_property_price
FROM ShortPricePaidData2025
WHERE town = 'London'
AND old_new = 'Y'
GROUP BY locality
ORDER BY average_new_property_price DESC;

SELECT * FROM ShortPricePaidData2024

CREATE INDEX idx_town_oldnew_locality
ON ShortPricePaidData2025(town, old_new, locality)
INCLUDE(price);

CREATE INDEX idx_town_oldnew
ON ShortPricePaidData2025(town, old_new)
INCLUDE(price, locality);

CREATE INDEX idx_town_inc_3
ON ShortPricePaidData2025(town)
INCLUDE(price, locality, old_new);

CREATE INDEX idx_town
ON ShortPricePaidData2025(town);

CREATE INDEX idx_locality
ON ShortPricePaidData2025(locality);

DROP INDEX idx_town_oldnew_locality ON ShortPricePaidData2025;
DROP INDEX idx_town_oldnew ON ShortPricePaidData2025;
DROP INDEX idx_town_inc_3 ON ShortPricePaidData2025;