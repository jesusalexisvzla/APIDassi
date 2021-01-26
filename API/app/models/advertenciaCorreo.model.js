module.exports = (sequelize, Sequelize) => {
    const AdvertenciaCorreo = sequelize.define("advertenciaCorreo", {
      idAdvertenciaCorreo: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      idAdvertencia: {
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
  
    return AdvertenciaCorreo;
  };