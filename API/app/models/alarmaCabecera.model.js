module.exports = (sequelize, Sequelize) => {
    const AlarmaCabecera = sequelize.define("alarmaCabecera", {
      idAlarma: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      titulo: {
        type: Sequelize.STRING
      },
      sensibilidad: {
        type: Sequelize.INTEGER
      },
      estatus: {
        type: Sequelize.STRING
      },
    },
    {
      freezeTableName: true
    });
  
    return AlarmaCabecera;
  };