CREATE TABLE public.input_points (
  id serial PRIMARY KEY,
  geom geometry
);

INSERT INTO public.input_points ( geom) VALUES
('POINT(8.36093 49.03174)'),
('POINT(8.39876 49.00644)');

UPDATE public.input_points
SET geom = ST_Transform(geom, 3068);
