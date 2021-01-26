module.exports = app => {
    const grupoPuntosMedicionCuerpo = require("../controllers/grupoPuntosMedicionCuerpo.controller.js");
  
    var router = require("express").Router();
  
    // Create a new object
    router.post("/", grupoPuntosMedicionCuerpo.create);
  
    // Retrieve all objects
    router.get("/", grupoPuntosMedicionCuerpo.findAll);
  
    // Retrieve a single object with id
    router.get("/:id", grupoPuntosMedicionCuerpo.findOne);
  
    // Update an object with id
    router.put("/:id", grupoPuntosMedicionCuerpo.update);
  
    app.use('/api/grupoPuntosMedicionCuerpo', router);
};