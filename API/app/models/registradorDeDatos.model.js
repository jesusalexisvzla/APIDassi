module.exports = (sequelize, Sequelize) => {
    const RegistradorDeDatos = sequelize.define("registradorDeDatos", {
      idRegistrador: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      nombre: {
        type: Sequelize.STRING
      },
      idPunto: {
        type: Sequelize.INTEGER
      },
    },
    {
      freezeTableName: true
    });
  
    return RegistradorDeDatos;
  };