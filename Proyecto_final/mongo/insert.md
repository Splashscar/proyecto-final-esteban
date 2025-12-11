db.pacientes.insertOne({
  nombre: "Ana",
  apellido: "Gómez",
  cedula: "1032456789",
  fechaNacimiento: new Date("1998-05-12"),
  contacto: { telefono: "3001234567", email: "ana@gmail.com" },
  alergias: ["Penicilina"],
  antecedentes: ["Hipertensión"]
});

db.historias_clinicas.insertOne({
  pacienteId: ObjectId("65ae4c3454a92f3e6dd29c8b"),
  fecha: new Date(),
  motivo: "Dolor abdominal",
  diagnostico: "Gastritis",
  tratamiento: "Dieta blanda",
  medicamentos: ["Omeprazol"]
});

db.citas.insertOne({
  pacienteId: ObjectId("65ae4c3454a92f3e6dd29c8b"),
  fecha: new Date("2025-02-15T09:30:00"),
  tipo: "Consulta general",
  estado: "pendiente"
});