const db = require("../models");
const GrupoPuntosMedicionCuerpo = db.grupoPuntosMedicionCuerpo;
const Op = db.Sequelize.Op;

// Create and Save a new object
exports.create = (req, res) => {
  // Create
  const grupoPuntosMedicionCuerpo = {
    idCuerpo: null,
    idGrupo: req.body.idGrupo,
    idPunto: req.body.idPunto,
  };

  // Save object in the database
  GrupoPuntosMedicionCuerpo.create(grupoPuntosMedicionCuerpo)
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
  GrupoPuntosMedicionCuerpo.findAll()
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

    GrupoPuntosMedicionCuerpo.findByPk(id)
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
    const idCuerpo = req.params.id;

    GrupoPuntosMedicionCuerpo.update(req.body, {
      where: { idCuerpo: idCuerpo }
    })
      .then(num => {
        if (num == 1) {
          res.send({
            message: "Object was updated successfully."
          });
        } else {
          res.send({
            message: `Cannot update Object with id=${idCuerpo}. Maybe Object was not found or req.body is empty!`
          });
        }
      })
      .catch(err => {
        res.status(500).send({
          message: "Error updating Object with id=" + idCuerpo
        });
      });
};
