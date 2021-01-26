module.exports = app => {
    const rango = require("../controllers/rango.controller.js");
  
    var router = require("express").Router();
  
    // Create a new object
    router.post("/", rango.create);
  
    // Retrieve all objects
    router.get("/", rango.findAll);
  
    // Retrieve a single object with id
    router.get("/:id", rango.findOne);
  
    // Update an object with id
    router.put("/:id", rango.update);
  
    app.use('/api/rango', router);
};