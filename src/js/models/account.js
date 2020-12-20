const connection = require('../connection');
const Sequilize = require('sequelize');

class Account extends Sequilize.Model {}

Account.init(
    {
        id: {
            type: Sequilize.STRING(45),
            primaryKey: true
        },
        username: {
            type: Sequilize.STRING(45),
            allowNull: false
        },
        password: {
            type: Sequilize.STRING(45),
            allowNull: false
        },
        email: {
            type: Sequilize.STRING(45),
            allowNull: false
        },
        status: {
            type: Sequilize.BOOLEAN(),
            allowNull: false
        }
    },
    {
        sequelize: connection,
        freezeTableName: true,
        modelName: 'Account'
    }
);

module.exports = Account
