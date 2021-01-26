module.exports = app => {
    const registradorDeDatos = require("../controllers/registradorDeDatos.controller.js");
  
    var router = require("express").Router();
  
    // Create a new object
    router.post("/", registradorDeDatos.create);
  
    // Retrieve all objects
    router.get("/", registradorDeDatos.findAll);
  
    // Retrieve a single object with id
    router.get("/:id", registradorDeDatos.findOne);
  
    // Update an object with id
    router.put("/:id", registradorDeDatos.update);
  
    app.use('/api/registradorDeDatos', router);
};