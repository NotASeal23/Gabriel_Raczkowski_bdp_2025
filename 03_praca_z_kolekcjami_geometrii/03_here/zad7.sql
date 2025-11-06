
SELECT COUNT(DISTINCT p.gid) AS liczba
FROM c_t2019_kar_poi_table p,c_t2019_kar_land_use_a a
WHERE p.type = 'Sporting Goods Store' AND ST_DWithin(p.geom, a.geom, 300)
