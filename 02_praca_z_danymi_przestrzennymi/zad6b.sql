SELECT ST_ASTEXT(geometry) as WKT, ST_AREA(geometry) as area, ST_PERIMETER(geometry) as perim 
FROM buildings
WHERE name = 'BuildingA';
