module.exports = (sequelize, Sequelize) => {
    const Rango = sequelize.define("rango", {
      idRango: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      displayName: {
        type: Sequelize.STRING
      },
      descripcion: {
        type: Sequelize.STRING
      },
    },
    {
      freezeTableName: true
    });
  
    return Rango;
  };