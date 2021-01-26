module.exports = (sequelize, Sequelize) => {
    const AlarmaPuntos = sequelize.define("alarmaPuntos", {
      idAlarmaPunto: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      idAlarma: {
        type: Sequelize.INTEGER
      },
      idPunto: {
        type: Sequelize.INTEGER
      },
    },
    {
      freezeTableName: true
    });
  
    return AlarmaPuntos;
  };