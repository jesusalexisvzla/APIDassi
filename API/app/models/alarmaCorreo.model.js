module.exports = (sequelize, Sequelize) => {
    const AlarmaCorreo = sequelize.define("alarmaCorreo", {
      idAlarmaCorreo: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      idAlarma: {
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
  
    return AlarmaCorreo;
  };