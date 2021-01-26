module.exports = app => {
    const advertenciaCabecera = require("../controllers/advertenciaCabecera.controller.js");
  
    var router = require("express").Router();
  
    // Create a new object
    router.post("/", advertenciaCabecera.create);
  
    // Retrieve all objects
    router.get("/", advertenciaCabecera.findAll);
  
    // Retrieve a single object with id
    router.get("/:id", advertenciaCabecera.findOne);
  
    // Update an object with id
    router.put("/:id", advertenciaCabecera.update);
  
    app.use('/api/advertenciaCabecera', router);
};