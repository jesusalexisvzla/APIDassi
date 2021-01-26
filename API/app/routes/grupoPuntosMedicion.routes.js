module.exports = app => {
    const grupoPuntosMedicion = require("../controllers/grupoPuntosMedicion.controller.js");
  
    var router = require("express").Router();
  
    // Create a new object
    router.post("/", grupoPuntosMedicion.create);
  
    // Retrieve all objects
    router.get("/", grupoPuntosMedicion.findAll);
  
    // Retrieve a single object with id
    router.get("/:id", grupoPuntosMedicion.findOne);
  
    // Update an object with id
    router.put("/:id", grupoPuntosMedicion.update);
  
    app.use('/api/grupoPuntosMedicion', router);
};