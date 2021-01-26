module.exports = (sequelize, Sequelize) => {
    const Objeto = sequelize.define("objeto", {
      idObjeto: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
      },
      titulo: {
        type: Sequelize.STRING
      },
      nombre: {
        type: Sequelize.STRING
      },
    },
    {
      freezeTableName: true
    });
  
    return Objeto;
  };