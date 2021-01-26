module.exports = app => {
    const usuario = require("../controllers/usuario.controller.js");
  
    var router = require("express").Router();
  
    // Create a new usuario
    router.post("/", usuario.create);
  
    // Retrieve all usuarios
    router.get("/", usuario.findAll);
  
    // Retrieve a single usuario with id
    router.get("/:id", usuario.findOne);
  
    // Update an usuario with id
    router.put("/:id", usuario.update);
  
    app.use('/api/usuario', router);
};