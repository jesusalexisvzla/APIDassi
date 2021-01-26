module.exports = app => {
    const noficiacionAlarma = require("../controllers/noficiacionAlarma.controller.js");
  
    var router = require("express").Router();
  
    // Create a new object
    router.post("/", noficiacionAlarma.create);
  
    // Retrieve all objects
    router.get("/", noficiacionAlarma.findAll);
  
    // Retrieve a single object with id
    router.get("/:id", noficiacionAlarma.findOne);
  
    // Update an object with id
    router.put("/:id", noficiacionAlarma.update);
  
    app.use('/api/noficiacionAlarma', router);
};