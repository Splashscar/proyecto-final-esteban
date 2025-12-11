CREATE TABLE especialidades (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE doctores (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    especialidad_id INT REFERENCES especialidades(id)
);

CREATE TABLE pacientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    fecha_nacimiento DATE NOT NULL
);

CREATE TABLE citas (
    id SERIAL PRIMARY KEY,
    paciente_id INT REFERENCES pacientes(id),
    doctor_id INT REFERENCES doctores(id),
    fecha TIMESTAMP NOT NULL,
    motivo VARCHAR(200)
);

CREATE TABLE tratamientos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL
);

CREATE TABLE citas_tratamientos (
    cita_id INT REFERENCES citas(id),
    tratamiento_id INT REFERENCES tratamientos(id),
    PRIMARY KEY (cita_id, tratamiento_id)
);