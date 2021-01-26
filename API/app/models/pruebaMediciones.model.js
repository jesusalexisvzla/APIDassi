module.exports = (sequelize, Sequelize) => {
    const PruebaMediciones = sequelize.define("pruebaMediciones", {
      idPrueba: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      idPunto: {
        type: Sequelize.INTEGER
      },
      fecha: {
        type: Sequelize.STRING
      },
      temperatura: {
        type: Sequelize.STRING
      },
      humedad: {
        type: Sequelize.STRING
      },
    },
    {
      freezeTableName: true
    });
  
    return PruebaMediciones;
  };