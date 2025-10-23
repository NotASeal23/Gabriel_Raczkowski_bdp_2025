INSERT INTO poi (name, geometry)VALUES
  ('G', 'POINT(1 3.5)'),
  ('K', 'POINT(6 9.5)'),  
  ('J', 'POINT(6 6.5)'),  
  ('I', 'POINT(9.5 6)'),
  ('H', 'POINT(5.5 1.5)');


INSERT INTO roads (name, geometry)VALUES
  ('RoadX', 'LINESTRING(0 4.5, 12 4.5)'),
  ('RoadY', 'LINESTRING(7.5 10.5, 7.5 0)');

INSERT INTO buildings (name, geometry) VALUES
('BuildingA', 'POLYGON((8 4, 8 1.5, 10.5 1.5, 10.5 4, 8 4))'),
('BuildingB', 'POLYGON((4 5, 6 5, 6 7, 4 7, 4 5))'),
('BuildingC', 'POLYGON((3 6, 5 6, 5 8, 3 8, 3 6))'),
('BuildingD', 'POLYGON((9 8, 10 8, 10 9, 9 9, 9 8))'),
('BuildingF', 'POLYGON((1 1, 2 1, 2 2, 1 2, 1 1))');
