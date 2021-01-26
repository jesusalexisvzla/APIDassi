module.exports = app => {
    const pruebaMediciones = require("../controllers/pruebaMediciones.controller.js");
  
    var router = require("express").Router();
  
    // Create a new object
    router.post("/", pruebaMediciones.create);
  
    // Retrieve all objects
    router.get("/", pruebaMediciones.findAll);
  
    // Retrieve a single object with id
    router.get("/:id", pruebaMediciones.findOne);
  
    // Update an object with id
    router.put("/:id", pruebaMediciones.update);
  
    app.use('/api/pruebaMediciones', router);
};