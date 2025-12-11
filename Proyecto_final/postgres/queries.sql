-- pacientes con sus doctores
SELECT p.nombre AS paciente, d.nombre AS doctor
FROM citas c
INNER JOIN pacientes p ON c.paciente_id = p.id
INNER JOIN doctores d ON c.doctor_id = d.id;

--doctores sin citas 
SELECT d.nombre, c.id AS cita
FROM doctores d
LEFT JOIN citas c ON d.id = c.doctor_id
WHERE c.id IS NULL;

--especialidades sin doctores
SELECT e.nombre, d.id
FROM doctores d
RIGHT JOIN especialidades e ON d.especialidad_id = e.id
WHERE d.id IS NULL;

--Pacientes y sus citas, mostrando aún los que no tienen:

SELECT p.nombre, c.fecha
FROM pacientes p
FULL JOIN citas c ON p.id = c.paciente_id;

--Doctores que tienen más de 1 cita:
SELECT d.nombre, COUNT(c.id) AS total
FROM doctores d
JOIN citas c ON d.id = c.doctor_id
GROUP BY d.nombre
HAVING COUNT(c.id) > 1;

--citas del doctor mas solicitado 
SELECT *
FROM citas
WHERE doctor_id = (
    SELECT doctor_id
    FROM citas
    GROUP BY doctor_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
);


--CTE (WITH)
WITH citas_por_paciente AS (
  SELECT paciente_id, COUNT(*) AS total
  FROM citas
  GROUP BY paciente_id
)
SELECT p.nombre, c.total
FROM citas_por_paciente c
JOIN pacientes p ON p.id = c.paciente_id;