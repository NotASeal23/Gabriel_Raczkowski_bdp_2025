create table obiekty (
	id SERIAL PRIMARY KEY,
	geometry geometry,
	name VARCHAR(32)
);


INSERT INTO obiekty (geometry, name)
VALUES (
    ST_LineToCurve('LINESTRING(0 1, 1 1, 2 0, 3 1, 4 2, 5 1, 6 1)'),
    'obiekt1'
);

INSERT INTO obiekty ( name,geometry)
VALUES 
    ('obiekt2', 
	'GEOMETRYCOLLECTION(
            LINESTRING(10 6, 14 6),
	 		CIRCULARSTRING(14 6, 16 4, 14 2),
	 		CIRCULARSTRING(14 2, 12 0, 10 2),
	 		LINESTRING(10 2, 11 2),
	 		CIRCULARSTRING(11 2, 12 3 ,13 2),
	 		CIRCULARSTRING(13 2, 12 1 ,11 2),
	 		LINESTRING(11 2, 10 2),
	 		LINESTRING(10 2, 10 6)
        )'
	)
;	





INSERT INTO obiekty ( name,geometry)
VALUES 
    ('obiekt3', 'POLYGON((7 15, 10 17, 12 13, 7 15))')
;



INSERT INTO obiekty ( name,geometry)
VALUES 
    ('obiekt4', 'LINESTRING(20 20, 25 25, 27 24, 25 22, 26 21, 	22 19, 20.5 19.5)')
;




INSERT INTO obiekty ( name,geometry)
VALUES 
    ('obiekt5', 'MULTIPOINT(30 30 59, 38 32 234)')
;




INSERT INTO obiekty ( name,geometry)
VALUES 
    ('obiekt6', 'GEOMETRYCOLLECTION(LINESTRING(1 1, 3 2),POINT(4 2))')
;
