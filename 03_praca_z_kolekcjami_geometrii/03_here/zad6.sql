CREATE TABLE public.droga AS
SELECT ST_MakeLine(
(SELECT geom FROM public.input_points WHERE id = 1),
(SELECT geom FROM public.input_points WHERE id = 2)
) AS line_geom;

SELECT *
FROM droga d,c_t2019_kar_street_node s
WHERE ST_DWithin(d.line_geom,ST_Transform(s.geom,3068),200);
