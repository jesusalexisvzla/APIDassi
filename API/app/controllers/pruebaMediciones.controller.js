const db = require("../models");
const PruebaMediciones = db.pruebaMediciones;
const Op = db.Sequelize.Op;

// Create and Save a new object
exports.create = (req, res) => {
  // Create
  const pruebaMediciones = {
    idPrueba: null,
    idPunto: req.body.idPunto,
    fecha: req.body.fecha,
    temperatura: req.body.temperatura,
    humedad: req.body.humedad
  };

  // Save object in the database
  PruebaMediciones.create(pruebaMediciones)
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
    PruebaMediciones.findAll()
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

    PruebaMediciones.findByPk(id)
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
    const idPrueba = req.params.id;

    PruebaMediciones.update(req.body, {
      where: { idPrueba: idPrueba }
    })
      .then(num => {
        if (num == 1) {
          res.send({
            message: "Object was updated successfully."
          });
        } else {
          res.send({
            message: `Cannot update Object with id=${idPrueba}. Maybe Object was not found or req.body is empty!`
          });
        }
      })
      .catch(err => {
        res.status(500).send({
          message: "Error updating Object with id=" + idPrueba
        });
      });
};
