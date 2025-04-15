-- Crear tabla Lugar
CREATE TABLE Lugar (
    id_lugar SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(150),
    capacidad INTEGER NOT NULL CHECK (capacidad > 0)
);

-- Crear tabla Evento
CREATE TABLE Evento (
    id_evento SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL,
    id_lugar INTEGER NOT NULL,
    CONSTRAINT fk_lugar
        FOREIGN KEY (id_lugar)
        REFERENCES Lugar(id_lugar)
        ON DELETE CASCADE
);

-- Crear tabla Asiento
CREATE TABLE Asiento (
    id_asiento SERIAL PRIMARY KEY,
    numero INTEGER NOT NULL,
    id_evento INTEGER NOT NULL,
    estado VARCHAR(20) NOT NULL CHECK (estado IN ('Disponible', 'Reservado')),
    CONSTRAINT fk_evento_asiento
        FOREIGN KEY (id_evento)
        REFERENCES Evento(id_evento)
        ON DELETE CASCADE
);

-- Crear tabla Reserva
CREATE TABLE Reserva (
    id_reserva SERIAL PRIMARY KEY,
    id_asiento INTEGER NOT NULL,
    id_evento INTEGER NOT NULL,
    nombre_cliente VARCHAR(100) NOT NULL,
    fecha_reserva TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado VARCHAR(20) NOT NULL CHECK (estado IN ('Activa', 'Cancelada')),
    CONSTRAINT fk_asiento_reserva
        FOREIGN KEY (id_asiento)
        REFERENCES Asiento(id_asiento)
        ON DELETE CASCADE,
    CONSTRAINT fk_evento_reserva
        FOREIGN KEY (id_evento)
        REFERENCES Evento(id_evento)
        ON DELETE CASCADE,
    CONSTRAINT unq_asiento_reserva
        UNIQUE (id_asiento, id_evento, estado)
);