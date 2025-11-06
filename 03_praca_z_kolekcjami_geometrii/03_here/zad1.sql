SELECT b2019.* FROM c_t2019_kar_buildings b2019
WHERE NOT EXISTS (
	SELECT 1 FROM c_t2018_kar_buildings b2018
	WHERE b2018.geom = b2019.geom
);
