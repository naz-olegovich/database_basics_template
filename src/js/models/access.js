const connection = require('../connection');
const Sequilize = require('sequelize');
const account = require('./account')

const Model = Sequilize.Model;

class Access extends Model {}

Access.init(
    {
        role: {
            type: Sequilize.STRING,
            primaryKey: true
        },
        account_id: {
            type: Sequilize.STRING,
            allowNull: false
        }
    },
    {
        sequelize: connection,
        freezeTableName: true,
        timestamps: false,
        modelName: 'Access'
    }
);

account.Account.hasOne(Access, {
    foreignKey: 'account_id'
});

Access.belongsTo(account.Account, {
    foreignKey: 'account_id'
});

module.exports = {
    Access
};
