const db = require("../models");
const GrupoPuntosMedicion = db.grupoPuntosMedicion;
const Op = db.Sequelize.Op;

// Create and Save a new object
exports.create = (req, res) => {
  // Create
  const grupoPuntosMedicion = {
    idGrupo: null,
    titulo: req.body.titulo,
    descripcion: req.body.descripcion,
    idRango: req.body.idRango,
  };

  // Save object in the database
  GrupoPuntosMedicion.create(grupoPuntosMedicion)
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
  GrupoPuntosMedicion.findAll()
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

    GrupoPuntosMedicion.findByPk(id)
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
    const idGrupo = req.params.id;

    GrupoPuntosMedicion.update(req.body, {
      where: { idGrupo: idGrupo }
    })
      .then(num => {
        if (num == 1) {
          res.send({
            message: "Object was updated successfully."
          });
        } else {
          res.send({
            message: `Cannot update Object with id=${idGrupo}. Maybe Object was not found or req.body is empty!`
          });
        }
      })
      .catch(err => {
        res.status(500).send({
          message: "Error updating Object with id=" + idGrupo
        });
      });
};
