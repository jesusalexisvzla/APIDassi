const db = require("../models");
const AlarmaControlTiempo = db.alarmaControlTiempo;
const Op = db.Sequelize.Op;

// Create and Save a new object
exports.create = (req, res) => {
  // Create
  const alarmaControlTiempo = {
    idAlarmaControl: null,
    idAlarma: req.body.idAlarma,
    limiteInf: req.body.limiteInf,
    limiteSup: req.body.limiteSup,
    retrasoLimiteInf: req.body.retrasoLimiteInf,
    retrasoLimiteSup: req.body.retrasoLimiteSup,
    canal: req.body.canal,
    lunesInf: req.body.lunesInf,
    lunesSup: req.body.lunesSup,
    martesInf: req.body.martesInf,
    martesSup: req.body.martesSup,
    miercolesInf: req.body.miercolesInf,
    miercolesSup: req.body.miercolesSup,
    juevesInf: req.body.juevesInf,
    juevesSup: req.body.juevesSup,
    viernesInf: req.body.viernesInf,
    viernesSup: req.body.viernesSup,
    sabadoInf: req.body.sabadoInf,
    sabadoSup: req.body.sabadoSup,
    domingoInf: req.body.domingoInf,
    domingoSup: req.body.domingoSup,
  };

  // Save object in the database
  AlarmaControlTiempo.create(alarmaControlTiempo)
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
  AlarmaControlTiempo.findAll()
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

    AlarmaControlTiempo.findByPk(id)
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
    const idAlarmaControl = req.params.id;

    AlarmaControlTiempo.update(req.body, {
      where: { idAlarmaControl: idAlarmaControl }
    })
      .then(num => {
        if (num == 1) {
          res.send({
            message: "Object was updated successfully."
          });
        } else {
          res.send({
            message: `Cannot update Object with id=${idAlarmaControl}. Maybe Object was not found or req.body is empty!`
          });
        }
      })
      .catch(err => {
        res.status(500).send({
          message: "Error updating Object with id=" + idAlarmaControl
        });
      });
};
