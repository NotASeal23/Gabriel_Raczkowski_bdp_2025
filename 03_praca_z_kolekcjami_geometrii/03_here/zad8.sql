CREATE TABLE T2019_KAR_BRIDGES AS
SELECT ST_Intersection(r.geom, w.geom) AS geom
FROM c_t2019_kar_railways r, c_t2019_kar_water_lines w
WHERE ST_Intersects(r.geom, w.geom);
