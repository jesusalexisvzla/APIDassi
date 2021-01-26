module.exports = (sequelize, Sequelize) => {
    const AdvertenciaCabecera = sequelize.define("advertenciaCabecera", {
      idAdvertencia: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      titulo: {
        type: Sequelize.STRING
      },
      pilaAgotada: {
        type: Sequelize.STRING
      },
      corrienteInterrumpida: {
        type: Sequelize.STRING
      },
      estatus: {
        type: Sequelize.STRING
      },
    },
    {
      freezeTableName: true
    });
  
    return AdvertenciaCabecera;
  };