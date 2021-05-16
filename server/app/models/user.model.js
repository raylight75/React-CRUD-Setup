module.exports = (sequelize, Sequelize) => {
    const User = sequelize.define('user', {
        id: {
            type: Sequelize.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        name: {
            type: Sequelize.STRING
        },
        email: {
            type: Sequelize.STRING
        },
        phone_number: {
            type: Sequelize.STRING
        },
        dob: {
            type: Sequelize.INTEGER
        },
        bloodGroup: {
            type: Sequelize.STRING,
        },
        parentId: {
            type: Sequelize.INTEGER
        },
    });

    return User;
}
