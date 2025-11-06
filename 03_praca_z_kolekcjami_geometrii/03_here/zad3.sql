CREATE TABLE streets_reprojected AS
SELECT *,ST_Transform(geom, 3068) AS geomDeutsche
FROM c_t2019_kar_streets;
