const db = require("../models");
const Objeto = db.objeto;
const Op = db.Sequelize.Op;

// Create and Save a new object
exports.create = (req, res) => {
  // Create
  const objeto = {
    idObjeto: null,
    titulo: req.body.titulo,
    nombre: req.body.nombre,
    apellidos: req.body.apellidos,
  };

  // Save object in the database
  Objeto.create(objeto)
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
    Objeto.findAll()
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

    Objeto.findByPk(id)
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
    const idObjeto = req.params.id;

    Objeto.update(req.body, {
      where: { idObjeto: idObjeto }
    })
      .then(num => {
        if (num == 1) {
          res.send({
            message: "Object was updated successfully."
          });
        } else {
          res.send({
            message: `Cannot update Object with id=${idObjeto}. Maybe Object was not found or req.body is empty!`
          });
        }
      })
      .catch(err => {
        res.status(500).send({
          message: "Error updating Object with id=" + idObjeto
        });
      });
};
