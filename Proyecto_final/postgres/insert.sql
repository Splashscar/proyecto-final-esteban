INSERT INTO especialidades(nombre) VALUES
('Cardiología'), ('Pediatría'), ('Dermatología');

INSERT INTO doctores(nombre, especialidad_id) VALUES
('Dr. Juan Pérez', 1),
('Dra. Lucía Torres', 2),
('Dr. Andrés Molina', 3);

INSERT INTO pacientes(nombre, fecha_nacimiento) VALUES
('Carlos Ruiz', '1989-05-13'),
('María López', '2002-09-22');

INSERT INTO citas(paciente_id, doctor_id, fecha, motivo) VALUES
(1, 1, '2025-02-10 10:00', 'Dolor de pecho'),
(1, 3, '2025-02-11 14:00', 'Erupción en la piel'),
(2, 2, '2025-02-12 09:00', 'Control rutinario');

INSERT INTO tratamientos(nombre) VALUES
('Electrocardiograma'),
('Antibióticos'),
('Alergias - Crema tópica');

INSERT INTO citas_tratamientos VALUES
(1, 1),
(2, 3),
(3, 2);