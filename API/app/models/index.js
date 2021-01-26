const dbConfig = require("../config/db.config.js");

const Sequelize = require("sequelize");
const sequelize = new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
  host: dbConfig.HOST,
  dialect: dbConfig.dialect,
  operatorsAliases: false,
  define: {
    timestamps: false
  },

  pool: {
    max: dbConfig.pool.max,
    min: dbConfig.pool.min,
    acquire: dbConfig.pool.acquire,
    idle: dbConfig.pool.idle
  }
});

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

// RUTAS
db.usuario = require("./usuario.model.js")(sequelize, Sequelize);
db.rango = require("./rango.model.js")(sequelize, Sequelize);
db.puntoDeMedicion = require("./puntoDeMedicion.model.js")(sequelize, Sequelize);
db.registradorDeDatos = require("./registradorDeDatos.model.js")(sequelize, Sequelize);
db.pruebaMediciones = require("./pruebaMediciones.model.js")(sequelize, Sequelize);
db.noficiacionAlarma = require("./noficiacionAlarma.model.js")(sequelize, Sequelize);
db.grupoPuntosMedicion = require("./grupoPuntosMedicion.model.js")(sequelize, Sequelize);
db.grupoPuntosMedicionCuerpo = require("./grupoPuntosMedicionCuerpo.model.js")(sequelize, Sequelize);
db.advertenciaCabecera = require("./advertenciaCabecera.model.js")(sequelize, Sequelize);
db.advertenciaCorreo = require("./advertenciaCorreo.model.js")(sequelize, Sequelize);
db.advertenciaRegistrador = require("./advertenciaRegistrador.model.js")(sequelize, Sequelize);
db.alarmaCabecera = require("./alarmaCabecera.model.js")(sequelize, Sequelize);
db.alarmaControlTiempo = require("./alarmaControlTiempo.model.js")(sequelize, Sequelize);
db.alarmaCorreo = require("./alarmaCorreo.model.js")(sequelize, Sequelize);
db.alarmaPuntos = require("./alarmaPuntos.model.js")(sequelize, Sequelize);
db.informeAutomaticoCabecera = require("./informeAutomaticoCabecera.model.js")(sequelize, Sequelize);
db.informeAutomaticoCorreos = require("./informeAutomaticoCorreos.model.js")(sequelize, Sequelize);
db.informeAutomaticoPuntos = require("./informeAutomaticoPuntos.model.js")(sequelize, Sequelize);







module.exports = db;