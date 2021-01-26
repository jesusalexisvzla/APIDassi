module.exports = app => {
    const advertenciaRegistrador = require("../controllers/advertenciaRegistrador.controller.js");
  
    var router = require("express").Router();
  
    // Create a new object
    router.post("/", advertenciaRegistrador.create);
  
    // Retrieve all objects
    router.get("/", advertenciaRegistrador.findAll);
  
    // Retrieve a single object with id
    router.get("/:id", advertenciaRegistrador.findOne);
  
    // Update an object with id
    router.put("/:id", advertenciaRegistrador.update);
  
    app.use('/api/advertenciaRegistrador', router);
};