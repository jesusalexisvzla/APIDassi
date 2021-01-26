const db = require("../models");
const AdvertenciaRegistrador = db.advertenciaRegistrador;
const Op = db.Sequelize.Op;

// Create and Save a new object
exports.create = (req, res) => {
  // Create
  const advertenciaRegistrador = {
    idAdvertenciaReg: null,
    idAdvertencia: req.body.idAdvertencia,
    idRegistrador: req.body.idRegistrador,
  };

  // Save object in the database
  AdvertenciaRegistrador.create(advertenciaRegistrador)
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
  AdvertenciaRegistrador.findAll()
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

    AdvertenciaRegistrador.findByPk(id)
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
    const idAdvertenciaReg = req.params.id;

    AdvertenciaRegistrador.update(req.body, {
      where: { idAdvertenciaReg: idAdvertenciaReg }
    })
      .then(num => {
        if (num == 1) {
          res.send({
            message: "Object was updated successfully."
          });
        } else {
          res.send({
            message: `Cannot update Object with id=${idAdvertenciaReg}. Maybe Object was not found or req.body is empty!`
          });
        }
      })
      .catch(err => {
        res.status(500).send({
          message: "Error updating Object with id=" + idAdvertenciaReg
        });
      });
};
