const connection = require('../connection');
const Sequilize = require('sequelize');

const Model = Sequilize.Model;

class Account extends Model {}

Account.init(
    {
        id: {
            type: Sequilize.STRING,
            primaryKey: true
        },
        username: {
            type: Sequilize.STRING,
            allowNull: false
        },
        password: {
            type: Sequilize.STRING,
            allowNull: false
        },
        email: {
            type: Sequilize.STRING,
            allowNull: false
        },
        status: {
            type: Sequilize.BOOLEAN,
            allowNull: false
        }
    },
    {
        sequelize: connection,
        freezeTableName: true,
        timestamps: false,
        modelName: 'Account'
    }
);

module.exports = {
    Account
};
