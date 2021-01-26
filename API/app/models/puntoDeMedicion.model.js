module.exports = (sequelize, Sequelize) => {
    const PuntoDeMedicion = sequelize.define("puntoDeMedicion", {
      idPunto: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      nombre: {
        type: Sequelize.STRING
      },
      descripcion: {
        type: Sequelize.STRING
      },
    },
    {
      freezeTableName: true
    });
  
    return PuntoDeMedicion;
  };