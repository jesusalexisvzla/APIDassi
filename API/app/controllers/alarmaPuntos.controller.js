const db = require("../models");
const AlarmaPuntos = db.alarmaPuntos;
const Op = db.Sequelize.Op;

// Create and Save a new object
exports.create = (req, res) => {
  // Create
  const alarmaPuntos = {
    idAlarmaPunto: null,
    idAlarma: req.body.idAlarma,
    idPunto: req.body.idPunto,
  };

  // Save object in the database
  AlarmaPuntos.create(alarmaPuntos)
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
  AlarmaPuntos.findAll()
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

    AlarmaPuntos.findByPk(id)
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
    const idAlarmaPunto = req.params.id;

    AlarmaPuntos.update(req.body, {
      where: { idAlarmaPunto: idAlarmaPunto }
    })
      .then(num => {
        if (num == 1) {
          res.send({
            message: "Object was updated successfully."
          });
        } else {
          res.send({
            message: `Cannot update Object with id=${idAlarmaPunto}. Maybe Object was not found or req.body is empty!`
          });
        }
      })
      .catch(err => {
        res.status(500).send({
          message: "Error updating Object with id=" + idAlarmaPunto
        });
      });
};
