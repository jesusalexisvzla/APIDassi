module.exports = (sequelize, Sequelize) => {
    const AdvertenciaRegistrador = sequelize.define("advertenciaRegistrador", {
      idAdvertenciaReg: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      idAdvertencia: {
        type: Sequelize.INTEGER
      },
      idRegistrador: {
        type: Sequelize.INTEGER
      },
    },
    {
      freezeTableName: true
    });
  
    return AdvertenciaRegistrador;
  };