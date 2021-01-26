const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

const app = express();

var corsOptions = {
  origin: "http://localhost:8081"
};

app.use(cors(corsOptions));

// parse requests of content-type - application/json
app.use(bodyParser.json());

// parse requests of content-type - application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

//CHECAR AQUÍ SI HAY ERROR
const db = require("./app/models");
//db.sequelize.sync();

// simple route
app.get("/", (req, res) => {
  res.json({ message: "API DE APP DE ALARMAS" });
});

//ROUTES
require("./app/routes/usuario.routes.js")(app);
require("./app/routes/rango.routes.js")(app);
require("./app/routes/puntoDeMedicion.routes.js")(app);
require("./app/routes/registradorDeDatos.routes.js")(app);
require("./app/routes/pruebaMediciones.routes.js")(app);
require("./app/routes/noficiacionAlarma.routes.js")(app);
require("./app/routes/grupoPuntosMedicion.routes.js")(app);
require("./app/routes/grupoPuntosMedicionCuerpo.routes.js")(app);
require("./app/routes/advertenciaCabecera.routes.js")(app);
require("./app/routes/advertenciaCorreo.routes.js")(app);
require("./app/routes/advertenciaRegistrador.routes.js")(app);
require("./app/routes/alarmaCabecera.routes.js")(app);
require("./app/routes/alarmaControlTiempo.routes.js")(app);
require("./app/routes/alarmaCorreo.routes.js")(app);
require("./app/routes/alarmaPuntos.routes.js")(app);
require("./app/routes/informeAutomaticoCabecera.routes.js")(app);
require("./app/routes/informeAutomaticoCorreos.routes.js")(app);
require("./app/routes/informeAutomaticoPuntos.routes.js")(app);






// set port, listen for requests
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});