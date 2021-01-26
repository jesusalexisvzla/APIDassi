module.exports = app => {
    const alarmaCabecera = require("../controllers/alarmaCabecera.controller.js");
  
    var router = require("express").Router();
  
    // Create a new object
    router.post("/", alarmaCabecera.create);
  
    // Retrieve all objects
    router.get("/", alarmaCabecera.findAll);
  
    // Retrieve a single object with id
    router.get("/:id", alarmaCabecera.findOne);
  
    // Update an object with id
    router.put("/:id", alarmaCabecera.update);
  
    app.use('/api/alarmaCabecera', router);
};