module.exports = (sequelize, Sequelize) => {
    const AlarmaControlTiempo = sequelize.define("alarmaControlTiempo", {
      idAlarmaControl: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      idAlarma: {
        type: Sequelize.INTEGER
      },
      limiteInf: {
        type: Sequelize.DOUBLE
      },
      limiteSup: {
        type: Sequelize.DOUBLE
      },
      retrasoLimiteInf: {
        type: Sequelize.INTEGER
      },
      retrasoLimiteSup: {
        type: Sequelize.INTEGER
      },
      canal: {
        type: Sequelize.STRING
      },
      lunesInf: {
        type: Sequelize.STRING
      },
      lunesSup: {
        type: Sequelize.STRING
      },
      martesInf: {
        type: Sequelize.STRING
      },
      martesSup: {
        type: Sequelize.STRING
      },
      miercolesInf: {
        type: Sequelize.STRING
      },
      miercolesSup: {
        type: Sequelize.STRING
      },
      juevesInf: {
        type: Sequelize.STRING
      },
      juevesSup: {
        type: Sequelize.STRING
      },
      viernesInf: {
        type: Sequelize.STRING
      },
      viernesSup: {
        type: Sequelize.STRING
      },
      sabadoInf: {
        type: Sequelize.STRING
      },
      sabadoSup: {
        type: Sequelize.STRING
      },
      domingoInf: {
        type: Sequelize.STRING
      },
      domingoSup: {
        type: Sequelize.STRING
      },
    },
    {
      freezeTableName: true
    });
  
    return AlarmaControlTiempo;
  };