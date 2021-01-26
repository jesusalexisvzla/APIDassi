const db = require("../models");
const InformeAutomaticoPuntos = db.informeAutomaticoPuntos;
const Op = db.Sequelize.Op;

// Create and Save a new object
exports.create = (req, res) => {
  // Create
  const informeAutomaticoPuntos = {
    idInformePunto: null,
    idInforme: req.body.idInforme,
    idPunto: req.body.idPunto,
    canal: req.body.canal,
  };

  // Save object in the database
  InformeAutomaticoPuntos.create(informeAutomaticoPuntos)
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
  InformeAutomaticoPuntos.findAll()
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

    InformeAutomaticoPuntos.findByPk(id)
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
    const idInformePunto = req.params.id;

    InformeAutomaticoPuntos.update(req.body, {
      where: { idInformePunto: idInformePunto }
    })
      .then(num => {
        if (num == 1) {
          res.send({
            message: "Object was updated successfully."
          });
        } else {
          res.send({
            message: `Cannot update Object with id=${idInformePunto}. Maybe Object was not found or req.body is empty!`
          });
        }
      })
      .catch(err => {
        res.status(500).send({
          message: "Error updating Object with id=" + idInformePunto
        });
      });
};
