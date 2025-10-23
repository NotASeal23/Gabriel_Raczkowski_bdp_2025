SELECT ST_AREA(geometry) - 
ST_AREA(ST_INTERSECTION(geometry,ST_Buffer((SELECT geometry FROM buildings WHERE name = 'BuildingB' LIMIT 1),0.5)))
AS pole
FROM buildings
WHERE name = 'BuildingC';
