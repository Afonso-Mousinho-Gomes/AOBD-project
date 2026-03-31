-- no index 11.515
SELECT locality, AVG(price) AS average_new_property_price
FROM ShortPricePaidData2025
WHERE town = 'London'
AND old_new = 'Y'
GROUP BY locality
ORDER BY average_new_property_price DESC;

SELECT * FROM ShortPricePaidData2024
--0.0352695
CREATE INDEX idx_town_oldnew_locality
ON ShortPricePaidData2025(town, old_new, locality)
INCLUDE(price);

--0.0805968
CREATE INDEX idx_town_oldnew
ON ShortPricePaidData2025(town, old_new)
INCLUDE(price, locality);

--0.464414
CREATE INDEX idx_town_inc
ON ShortPricePaidData2025(town)
INCLUDE(price, locality, old_new);

--0.464414
CREATE INDEX idx_oldnew
ON ShortPricePaidData2025(old_new)
INCLUDE(price, locality, town);

DROP INDEX idx_town_oldnew_locality ON ShortPricePaidData2025;
DROP INDEX idx_town_oldnew ON ShortPricePaidData2025;
DROP INDEX idx_town_inc ON ShortPricePaidData2025;
DROP INDEX idx_oldnew ON ShortPricePaidData2025;