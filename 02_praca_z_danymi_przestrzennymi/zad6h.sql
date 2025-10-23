
SELECT  
	ST_AREA(geometry)- 
	2*ST_AREA(ST_Intersection(geometry,ST_GeomFromText('POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))'))) +
	ST_AREA(ST_GeomFromText('POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))')) 
FROM buildings
WHERE name = 'BuildingC';
