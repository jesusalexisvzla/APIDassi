module.exports = app => {
    const alarmaControlTiempo = require("../controllers/alarmaControlTiempo.controller.js");
  
    var router = require("express").Router();
  
    // Create a new object
    router.post("/", alarmaControlTiempo.create);
  
    // Retrieve all objects
    router.get("/", alarmaControlTiempo.findAll);
  
    // Retrieve a single object with id
    router.get("/:id", alarmaControlTiempo.findOne);
  
    // Update an object with id
    router.put("/:id", alarmaControlTiempo.update);
  
    app.use('/api/alarmaControlTiempo', router);
};