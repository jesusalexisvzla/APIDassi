module.exports = (sequelize, Sequelize) => {
    const GrupoPuntosMedicionCuerpo = sequelize.define("grupoPuntosMedicionCuerpo", {
      idCuerpo: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      idGrupo: {
        type: Sequelize.INTEGER
      },
      idPunto: {
        type: Sequelize.INTEGER
      },
    },
    {
      freezeTableName: true
    });
  
    return GrupoPuntosMedicionCuerpo;
  };