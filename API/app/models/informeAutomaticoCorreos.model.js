module.exports = (sequelize, Sequelize) => {
    const InformeAutomaticoCorreos = sequelize.define("informeAutomaticoCorreos", {
      idInformeCorreo: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      idInforme: {
        type: Sequelize.INTEGER
      },
      nombre: {
        type: Sequelize.STRING
      },
      correo: {
        type: Sequelize.STRING
      },
    },
    {
      freezeTableName: true
    });
  
    return InformeAutomaticoCorreos;
  };