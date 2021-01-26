module.exports = (sequelize, Sequelize) => {
    const GrupoPuntosMedicion = sequelize.define("grupoPuntosMedicion", {
      idGrupo: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      titulo: {
        type: Sequelize.STRING
      },
      descripcion: {
        type: Sequelize.STRING
      },
      idRango: {
        type: Sequelize.INTEGER
      },
    },
    {
      freezeTableName: true
    });
  
    return GrupoPuntosMedicion;
  };