module.exports = app => {
    const informeAutomaticoCorreos = require("../controllers/informeAutomaticoCorreos.controller.js");
  
    var router = require("express").Router();
  
    // Create a new object
    router.post("/", informeAutomaticoCorreos.create);
  
    // Retrieve all objects
    router.get("/", informeAutomaticoCorreos.findAll);
  
    // Retrieve a single object with id
    router.get("/:id", informeAutomaticoCorreos.findOne);
  
    // Update an object with id
    router.put("/:id", informeAutomaticoCorreos.update);
  
    app.use('/api/informeAutomaticoCorreos', router);
};