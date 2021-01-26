module.exports = app => {
    const advertenciaCorreo = require("../controllers/advertenciaCorreo.controller.js");
  
    var router = require("express").Router();
  
    // Create a new object
    router.post("/", advertenciaCorreo.create);
  
    // Retrieve all objects
    router.get("/", advertenciaCorreo.findAll);
  
    // Retrieve a single object with id
    router.get("/:id", advertenciaCorreo.findOne);
  
    // Update an object with id
    router.put("/:id", advertenciaCorreo.update);
  
    app.use('/api/advertenciaCorreo', router);
};