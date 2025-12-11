db.citas.aggregate([
  { $group: { _id: "$estado", total: { $sum: 1 } } },
  { $sort: { total: -1 } }
])

db.historias_clinicas.aggregate([
  {
    $lookup: {
      from: "pacientes",
      localField: "pacienteId",
      foreignField: "_id",
      as: "paciente"
    }
  },
  { $project: { paciente: 1, motivo: 1, diagnostico: 1, fecha: 1 } }
])

