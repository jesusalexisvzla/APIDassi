module.exports = app => {
    const informeAutomaticoPuntos = require("../controllers/informeAutomaticoPuntos.controller.js");
  
    var router = require("express").Router();
  
    // Create a new object
    router.post("/", informeAutomaticoPuntos.create);
  
    // Retrieve all objects
    router.get("/", informeAutomaticoPuntos.findAll);
  
    // Retrieve a single object with id
    router.get("/:id", informeAutomaticoPuntos.findOne);
  
    // Update an object with id
    router.put("/:id", informeAutomaticoPuntos.update);
  
    app.use('/api/informeAutomaticoPuntos', router);
};