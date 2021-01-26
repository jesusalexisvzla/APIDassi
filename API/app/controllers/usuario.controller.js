const db = require("../models");
const Usuario = db.usuario;
const Op = db.Sequelize.Op;

// Create and Save a new object
exports.create = (req, res) => {
  // Create
  const usuario = {
    idUsuario: null,
    titulo: req.body.titulo,
    nombre: req.body.nombre,
    apellidos: req.body.apellidos,
    contrasenia: req.body.contrasenia,
    correo: req.body.correo,
    telefono: req.body.telefono,
    rol: req.body.rol,
    activoDesde: req.body.activoDesde,
    activoHasta: req.body.activoHasta,
    detalles: req.body.detalles
  };

  // Save usuario in the database
  Usuario.create(usuario)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the Usuario."
      });
    });
  
};

// Retrieve all objects from the database.
exports.findAll = (req, res) => {
    Usuario.findAll()
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

    Usuario.findByPk(id)
      .then(data => {
        res.send(data);
      })
      .catch(err => {
        res.status(500).send({
          message: "Error retrieving Object with id=" + id
        });
      });
};

// Update a object by the id in the request
exports.update = (req, res) => {
    const idUsuario = req.params.id;

    Usuario.update(req.body, {
      where: { idUsuario: idUsuario }
    })
      .then(num => {
        if (num == 1) {
          res.send({
            message: "Object was updated successfully."
          });
        } else {
          res.send({
            message: `Cannot update Object with id=${idUsuario}. Maybe Object was not found or req.body is empty!`
          });
        }
      })
      .catch(err => {
        res.status(500).send({
          message: "Error updating Object with id=" + idUsuario
        });
      });
};
