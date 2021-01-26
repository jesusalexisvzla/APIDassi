const db = require("../models");
const NoficiacionAlarma = db.noficiacionAlarma;
const Op = db.Sequelize.Op;

// Create and Save a new object
exports.create = (req, res) => {
  // Create
  const noficiacionAlarma = {
    idNotificacion: null,
    fecha: req.body.fecha,
    tipo: req.body.tipo,
    idPunto: req.body.idPunto,
    evento: req.body.evento,
    estatus: req.body.estatus
  };

  // Save object in the database
  NoficiacionAlarma.create(noficiacionAlarma)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the object."
      });
    });
  
};

// Retrieve all objects from the database.
exports.findAll = (req, res) => {
  NoficiacionAlarma.findAll()
    .then(data => {
        res.send(data);
    })
    .catch(err => {
        res.status(500).send({
            message:
                err.message || "Some error occurred while retrieving objects."
    });
});
};

// Find a single object with an id
exports.findOne = (req, res) => {
    const id = req.params.id;

    NoficiacionAlarma.findByPk(id)
      .then(data => {
        res.send(data);
      })
      .catch(err => {
        res.status(500).send({
          message: "Error retrieving Object with id=" + id
        });
      });
  
};

// Update an object by the id in the request
exports.update = (req, res) => {
    const idNotificacion = req.params.id;

    NoficiacionAlarma.update(req.body, {
      where: { idNotificacion: idNotificacion }
    })
      .then(num => {
        if (num == 1) {
          res.send({
            message: "Object was updated successfully."
          });
        } else {
          res.send({
            message: `Cannot update Object with id=${idNotificacion}. Maybe Object was not found or req.body is empty!`
          });
        }
      })
      .catch(err => {
        res.status(500).send({
          message: "Error updating Object with id=" + idNotificacion
        });
      });
};
