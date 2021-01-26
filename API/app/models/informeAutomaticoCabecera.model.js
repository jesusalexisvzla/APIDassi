module.exports = (sequelize, Sequelize) => {
    const InformeAutomaticoCabecera = sequelize.define("informeAutomaticoCabecera", {
      idInforme: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      nombre: {
        type: Sequelize.STRING
      },
      frecuencia: {
        type: Sequelize.STRING
      },
      formato: {
        type: Sequelize.STRING
      },
      tablas: {
        type: Sequelize.STRING
      },
      alarmas: {
        type: Sequelize.STRING
      },
      grafico: {
        type: Sequelize.STRING
      },
      enviarCorreo: {
        type: Sequelize.STRING
      },
    },
    {
      freezeTableName: true
    });
  
    return InformeAutomaticoCabecera;
  };