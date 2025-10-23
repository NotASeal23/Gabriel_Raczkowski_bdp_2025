SELECT name, ST_AREA(geometry) as area 
FROM buildings
ORDER BY name;
