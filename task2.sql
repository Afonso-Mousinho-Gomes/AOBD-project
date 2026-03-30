--check frontiers of partition
SELECT DISTINCT county,
       NTILE(5) OVER (ORDER BY county) AS partition_group
FROM (
    SELECT county
    FROM ShortPricePaidData2025
) t
ORDER BY county;

CREATE PARTITION FUNCTION pf_county (VARCHAR(50))
AS RANGE LEFT FOR VALUES (
    'D', 'H', 'M', 'S'
);

CREATE PARTITION SCHEME ps_county
AS PARTITION pf_county
ALL TO ([PRIMARY]);

SELECT 
	* 
INTO ShortPricePaidData2025_Partitioned
FROM ShortPricePaidData2025;

SELECT 
    $PARTITION.pf_county(county) AS partition_number,
    COUNT(*) AS total_rows
FROM ShortPricePaidData2025_Partitioned
GROUP BY $PARTITION.pf_county(county);