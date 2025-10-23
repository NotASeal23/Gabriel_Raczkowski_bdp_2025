SELECT name, ST_PERIMETER(geometry) as perim
FROM buildings
ORDER BY ST_AREA(geometry) DESC
LIMIT 2;
