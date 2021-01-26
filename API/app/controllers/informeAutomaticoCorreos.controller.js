const db = require("../models");
const InformeAutomaticoCorreos = db.informeAutomaticoCorreos;
const Op = db.Sequelize.Op;

// Create and Save a new object
exports.create = (req, res) => {
  // Create
  const informeAutomaticoCorreos = {
    idInformeCorreo: null,
    idInforme: req.body.idInforme,
    nombre: req.body.nombre,
    correo: req.body.correo,
  };

  // Save object in the database
  InformeAutomaticoCorreos.create(informeAutomaticoCorreos)
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
  InformeAutomaticoCorreos.findAll()
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

    InformeAutomaticoCorreos.findByPk(id)
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
    const idInformeCorreo = req.params.id;

    InformeAutomaticoCorreos.update(req.body, {
      where: { idInformeCorreo: idInformeCorreo }
    })
      .then(num => {
        if (num == 1) {
          res.send({
            message: "Object was updated successfully."
          });
        } else {
          res.send({
            message: `Cannot update Object with id=${idInformeCorreo}. Maybe Object was not found or req.body is empty!`
          });
        }
      })
      .catch(err => {
        res.status(500).send({
          message: "Error updating Object with id=" + idInformeCorreo
        });
      });
};
