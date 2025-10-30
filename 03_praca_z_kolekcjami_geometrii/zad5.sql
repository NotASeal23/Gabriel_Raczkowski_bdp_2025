SELECT SUM(ST_Area(ST_Buffer(geometry, 5))) AS suma_pól
FROM obiekty
WHERE ST_HasArc(geometry) = false;
