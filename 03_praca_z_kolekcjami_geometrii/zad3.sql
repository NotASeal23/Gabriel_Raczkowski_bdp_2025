UPDATE obiekty --dodanie punktu tego co jest na poczatku
SET geometry = ST_AddPoint(geometry, ST_StartPoint(geometry))
WHERE name = 'obiekt4' AND GeometryType(geometry) = 'ST_LineString' AND NOT ST_IsClosed(geometry);



UPDATE obiekty -- zmiana typu
SET geometry = ST_MakePolygon(geometry)
WHERE name = 'obiekt4'

-- warunki poligonu 
-- zamknięty - pierwszy punkt jest taki sam jak ostatni
-- co najmniej 3 punkty
