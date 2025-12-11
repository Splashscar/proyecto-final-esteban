use clinicaMongo

1. coleccion
db.createCollection("pacientes", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["nombre", "apellido", "cedula", "fechaNacimiento"],
      properties: {
        nombre: { bsonType: "string" },
        apellido: { bsonType: "string" },
        cedula: { bsonType: "string" },
        fechaNacimiento: { bsonType: "date" },
        contacto: {
          bsonType: "object",
          properties: {
            telefono: { bsonType: "string" },
            email: { bsonType: "string" }
          }
        },
        alergias: { bsonType: "array" },
        antecedentes: { bsonType: "array" }
      }
    }
  }
})

2. coleccion 
db.createCollection("historias_clinicas", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["pacienteId", "fecha", "motivo", "diagnostico"],
      properties: {
        pacienteId: { bsonType: "objectId" },
        fecha: { bsonType: "date" },
        motivo: { bsonType: "string" },
        diagnostico: { bsonType: "string" },
        tratamiento: { bsonType: "string" },
        medicamentos: { bsonType: "array" }
      }
    }
  }
})

3. coleccion
db.createCollection("citas", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["pacienteId", "fecha", "tipo", "estado"],
      properties: {
        pacienteId: { bsonType: "objectId" },
        fecha: { bsonType: "date" },
        tipo: { bsonType: "string" },
        estado: { bsonType: "string", enum: ["pendiente", "completada", "cancelada"] }
      }
    }
  }
})

