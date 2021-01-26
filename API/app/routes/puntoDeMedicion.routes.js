module.exports = app => {
    const objeto = require("../controllers/puntoDeMedicion.controller.js");
  
    var router = require("express").Router();
  
    // Create a new object
    router.post("/", objeto.create);
  
    // Retrieve all objects
    router.get("/", objeto.findAll);
  
    // Retrieve a single object with id
    router.get("/:id", objeto.findOne);
  
    // Update an object with id
    router.put("/:id", objeto.update);
  
    app.use('/api/puntoDeMedicion', router);
};