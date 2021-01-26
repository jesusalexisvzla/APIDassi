module.exports = (sequelize, Sequelize) => {
    const NoficiacionAlarma = sequelize.define("noficiacionAlarma", {
      idNotificacion: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      fecha: {
        type: Sequelize.STRING
      },
      tipo: {
        type: Sequelize.STRING
      },
      idPunto: {
        type: Sequelize.INTEGER
      },
      evento: {
        type: Sequelize.STRING
      },
      estatus: {
        type: Sequelize.STRING
      }
    },
    {
      freezeTableName: true
    });
  
    return NoficiacionAlarma;
  };