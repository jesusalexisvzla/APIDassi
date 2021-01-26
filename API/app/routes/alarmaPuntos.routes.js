module.exports = app => {
    const alarmaPuntos = require("../controllers/alarmaPuntos.controller.js");
  
    var router = require("express").Router();
  
    // Create a new object
    router.post("/", alarmaPuntos.create);
  
    // Retrieve all objects
    router.get("/", alarmaPuntos.findAll);
  
    // Retrieve a single object with id
    router.get("/:id", alarmaPuntos.findOne);
  
    // Update an object with id
    router.put("/:id", alarmaPuntos.update);
  
    app.use('/api/alarmaPuntos', router);
};