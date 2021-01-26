const db = require("../models");
const InformeAutomaticoCabecera = db.informeAutomaticoCabecera;
const Op = db.Sequelize.Op;

// Create and Save a new object
exports.create = (req, res) => {
  // Create
  const informeAutomaticoCabecera = {
    idInforme: null,
    nombre: req.body.nombre,
    frecuencia: req.body.frecuencia,
    formato: req.body.formato,
    tablas: req.body.tablas,
    alarmas: req.body.alarmas,
    grafico: req.body.grafico,
    enviarCorreo: req.body.enviarCorreo,
  };

  // Save object in the database
  InformeAutomaticoCabecera.create(informeAutomaticoCabecera)
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
  InformeAutomaticoCabecera.findAll()
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

    InformeAutomaticoCabecera.findByPk(id)
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
    const idInforme = req.params.id;

    InformeAutomaticoCabecera.update(req.body, {
      where: { idInforme: idInforme }
    })
      .then(num => {
        if (num == 1) {
          res.send({
            message: "Object was updated successfully."
          });
        } else {
          res.send({
            message: `Cannot update Object with id=${idInforme}. Maybe Object was not found or req.body is empty!`
          });
        }
      })
      .catch(err => {
        res.status(500).send({
          message: "Error updating Object with id=" + idInforme
        });
      });
};
