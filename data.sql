-- Insertar Lugares
INSERT INTO Lugar (nombre, direccion, capacidad) VALUES
('Teatro Nacional', 'Av. Reforma 123, Ciudad', 100),
('Auditorio Central', 'Boulevard Los Próceres 456, Ciudad', 200);

-- Insertar Evento
INSERT INTO Evento (nombre, fecha, id_lugar) VALUES
('Concierto de Rock', '2025-06-20', 1),
('Obra de Teatro Clásica', '2025-07-05', 2);





-- Insertar Asientos para el evento 1 (Concierto de Rock)
INSERT INTO Asiento (numero, id_evento, estado) VALUES
(1, 1, 'Disponible'),
(2, 1, 'Reservado'),
(3, 1, 'Disponible'),
(4, 1, 'Reservado'),
(5, 1, 'Disponible'),
(6, 1, 'Reservado'),
(7, 1, 'Disponible'),
(8, 1, 'Reservado'),
(9, 1, 'Disponible'),
(10, 1, 'Reservado'),
(11, 1, 'Disponible'),
(12, 1, 'Reservado'),
(13, 1, 'Disponible'),
(14, 1, 'Reservado'),
(15, 1, 'Disponible'),
(16, 1, 'Reservado'),
(17, 1, 'Disponible'),
(18, 1, 'Reservado'),
(19, 1, 'Disponible'),
(20, 1, 'Reservado'),
(21, 1, 'Disponible'),
(22, 1, 'Reservado'),
(23, 1, 'Disponible'),
(24, 1, 'Reservado'),
(25, 1, 'Disponible'),
(26, 1, 'Reservado'),
(27, 1, 'Disponible'),
(28, 1, 'Reservado'),
(29, 1, 'Disponible'),
(30, 1, 'Reservado');


    -- Insertar Asientos para el evento 2 (Obra de Teatro Clásica)
    INSERT INTO Asiento (numero, id_evento, estado) VALUES
    (1, 2, 'Disponible'),
    (2, 2, 'Disponible'),
    (3, 2, 'Disponible'),
    (4, 2, 'Reservado'),
    (5, 2, 'Disponible'),
    (6, 2, 'Reservado'),
    (7, 2, 'Disponible'),
    (8, 2, 'Reservado'),
    (9, 2, 'Disponible'),
    (10, 2, 'Reservado'),
    (11, 2, 'Disponible'),
    (12, 2, 'Reservado'),
    (13, 2, 'Disponible'),
    (14, 2, 'Reservado'),
    (15, 2, 'Disponible'),
    (16, 2, 'Reservado'),
    (17, 2, 'Disponible'),
    (18, 2, 'Reservado'),
    (19, 2, 'Disponible'),
    (20, 2, 'Reservado');
    (21, 2, 'Disponible'),
    (22, 2, 'Reservado'),
    (23, 2, 'Disponible'),
    (24, 2, 'Reservado'),
    (25, 2, 'Disponible'),
    (26, 2, 'Reservado'),
    (27, 2, 'Disponible'),
    (28, 2, 'Reservado'),
    (29, 2, 'Disponible'),
    (30, 2, 'Reservado');

-- Insertar Reservas para el evento 1
INSERT INTO Reserva (id_asiento, id_evento, nombre_cliente, estado) VALUES
(2, 1, 'Carlos Pérez', 'Activa'),
(4, 1, 'Ana Martínez', 'Activa'),
(1, 2, 'Luis Gómez', 'Activa'),
(2, 2, 'María López', 'Activa'),
(3, 2, 'Juan Torres', 'Activa');