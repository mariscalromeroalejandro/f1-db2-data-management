CONNECT TO F1DB;

INSERT INTO Teams VALUES 
(1, 'Mercedes', 'Germany'),
(2, 'Red Bull Racing', 'Austria'),
(3, 'Ferrari', 'Italy');

INSERT INTO Drivers VALUES 
(101, 'Lewis Hamilton', 'UK', 1),
(102, 'Max Verstappen', 'Netherlands', 2),
(103, 'Charles Leclerc', 'Monaco', 3);

INSERT INTO Races VALUES 
(1001, 'British Grand Prix', '2024-07-07'),
(1002, 'Dutch Grand Prix', '2024-08-25');

INSERT INTO Results VALUES 
(1, 101, 1001, 2, '1:22.345'),
(2, 102, 1001, 1, '1:22.123'),
(3, 103, 1001, 4, '1:23.456'),
(4, 102, 1002, 1, '1:19.876');

CONNECT RESET;