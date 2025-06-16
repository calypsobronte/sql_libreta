SHOW TABLES;

DESCRIBE libreta;

USE libreta;

INSERT INTO libreta (nombre, domicilio, telefono) VALUES 
('Alberto Mores', 'Colon 123', '4234567'),
('Juan Torres', 'Avellaneda 135', '4458787');

SELECT * FROM libreta;

UPDATE libreta SET domicilio = 'Colon 456' WHERE nombre = 'Alberto Mores';
UPDATE libreta SET telefono = '4458788' WHERE nombre = 'Juan Torres';

INSERT INTO libreta (nombre, domicilio, telefono) VALUES 
('Maria Lopez', 'San Martin 200', '1234567'),
('Carlos Perez', 'Rivadavia 300', '7654321'),
('Laura Garcia', 'Sarmiento 400', '9876543'),
('Pedro Sanchez', 'Belgrano 500', '4567890'),
('Ana Torres', 'Mitre 600', '3216549');

SELECT COUNT(*) FROM libreta;