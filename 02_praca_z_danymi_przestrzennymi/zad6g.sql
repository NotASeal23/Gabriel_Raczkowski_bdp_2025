SELECT b.name
FROM buildings b, roads r
WHERE ST_Y(ST_CENTROID(b.geometry)) > ST_YMIN(r.geometry) AND r.name = 'RoadX';
