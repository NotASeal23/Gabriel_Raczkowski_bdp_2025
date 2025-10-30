UPDATE obiekty
SET geometry = ST_AddPoint(geometry, ST_StartPoint(geometry))
WHERE name = 'obiekt4' AND GeometryType(geometry) = 'ST_LineString' AND NOT ST_IsClosed(geometry);

-- warunki poligonu 
-- zamknięty - pierwszy punkt jest taki sam jak ostatni
-- co najmniej 3 punkty
