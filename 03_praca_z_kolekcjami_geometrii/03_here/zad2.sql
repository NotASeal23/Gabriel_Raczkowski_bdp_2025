CREATE TABLE changed_poi AS
SELECT p2019.* FROM c_t2019_kar_poi_table p2019
WHERE NOT EXISTS (
	SELECT 1 FROM c_t2018_kar_poi_table p2018
	WHERE p2018.geom = p2019.geom
);


SELECT p.type, COUNT(*) AS counted
FROM changed_poi p
JOIN changed_buildings_2018_2019 b
ON ST_DISTANCE(p.geom, b.geom) <= 500
GROUP BY p.type;
