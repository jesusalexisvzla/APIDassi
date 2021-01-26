module.exports = app => {
    const informeAutomaticoCabecera = require("../controllers/informeAutomaticoCabecera.controller.js");
  
    var router = require("express").Router();
  
    // Create a new object
    router.post("/", informeAutomaticoCabecera.create);
  
    // Retrieve all objects
    router.get("/", informeAutomaticoCabecera.findAll);
  
    // Retrieve a single object with id
    router.get("/:id", informeAutomaticoCabecera.findOne);
  
    // Update an object with id
    router.put("/:id", informeAutomaticoCabecera.update);
  
    app.use('/api/informeAutomaticoCabecera', router);
};