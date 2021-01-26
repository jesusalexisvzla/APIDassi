module.exports = app => {
    const alarmaCorreo = require("../controllers/alarmaCorreo.controller.js");
  
    var router = require("express").Router();
  
    // Create a new object
    router.post("/", alarmaCorreo.create);
  
    // Retrieve all objects
    router.get("/", alarmaCorreo.findAll);
  
    // Retrieve a single object with id
    router.get("/:id", alarmaCorreo.findOne);
  
    // Update an object with id
    router.put("/:id", alarmaCorreo.update);
  
    app.use('/api/alarmaCorreo', router);
};