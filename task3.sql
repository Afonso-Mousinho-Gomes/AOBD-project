-- no index 11.515
SELECT locality, AVG(price) AS average_new_property_price
FROM ShortPricePaidData2025
WHERE town = 'London'
AND old_new = 'Y'
GROUP BY locality
ORDER BY average_new_property_price DESC;

--first index 5.72706
CREATE INDEX first_idx
ON ShortPricePaidData2025(town, old_new);

--second index 0.0759047
CREATE INDEX second_idx
ON ShortPricePaidData2025(town, old_new)
INCLUDE(price, locality);

--third index 0.0325524
CREATE INDEX best_idx
ON ShortPricePaidData2025(old_new, town, locality)
INCLUDE(price);

DROP INDEX first_idx ON ShortPricePaidData2025;
DROP INDEX second_idx ON ShortPricePaidData2025;
DROP INDEX best_idx ON ShortPricePaidData2025;