module.exports = (sequelize, Sequelize) => {
    const Usuario = sequelize.define("usuario", {
      idUsuario: {
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
      apellidos: {
        type: Sequelize.STRING
      },
      contrasenia: {
        type: Sequelize.STRING
      },
      correo: {
        type: Sequelize.STRING
      },
      telefono: {
        type: Sequelize.STRING
      },
      rol: {
        type: Sequelize.STRING
      },
      activoDesde: {
        type: Sequelize.STRING
      },
      activoHasta: {
        type: Sequelize.STRING
      },
      detalles: {
        type: Sequelize.STRING
      },
    },
    {
      freezeTableName: true
    });
  
    return Usuario;
  };