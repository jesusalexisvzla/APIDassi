const db = require("../models");
const AdvertenciaCabecera = db.advertenciaCabecera;
const Op = db.Sequelize.Op;

// Create and Save a new object
exports.create = (req, res) => {
  // Create
  const advertenciaCabecera = {
    idAdvertencia: null,
    titulo: req.body.titulo,
    pilaAgotada: req.body.pilaAgotada,
    corrienteInterrumpida: req.body.corrienteInterrumpida,
    estatus: req.body.estatus,
  };

  // Save object in the database
  AdvertenciaCabecera.create(advertenciaCabecera)
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
  AdvertenciaCabecera.findAll()
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

    AdvertenciaCabecera.findByPk(id)
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
    const idAdvertencia = req.params.id;

    AdvertenciaCabecera.update(req.body, {
      where: { idAdvertencia: idAdvertencia }
    })
      .then(num => {
        if (num == 1) {
          res.send({
            message: "Object was updated successfully."
          });
        } else {
          res.send({
            message: `Cannot update Object with id=${idAdvertencia}. Maybe Object was not found or req.body is empty!`
          });
        }
      })
      .catch(err => {
        res.status(500).send({
          message: "Error updating Object with id=" + idAdvertencia
        });
      });
};
