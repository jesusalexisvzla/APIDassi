module.exports = (sequelize, Sequelize) => {
    const InformeAutomaticoPuntos = sequelize.define("informeAutomaticoPuntos", {
      idInformePunto: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      idInforme: {
        type: Sequelize.INTEGER
      },
      idPunto: {
        type: Sequelize.INTEGER
      },
      canal: {
        type: Sequelize.STRING
      },
    },
    {
      freezeTableName: true
    });
  
    return InformeAutomaticoPuntos;
  };