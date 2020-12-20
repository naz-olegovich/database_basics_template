const models = require('../../src/js/models');
const Table = require("cli-table3");
const _ = require("lodash-node");
const chalk = require("chalk");

const toTable =  (data, ...fields) => {
    let res = new Table( { head: fields.map( f => _.last(f.split("."))) } );
    data.forEach(item => {
        let d = [];
        fields.forEach( field => {
            d.push( _.get(item, field) || " ");
        });
        res.push(d);
    });
    return res.toString();
};


(async () => {
    const accountsList = await models.account.findAll();
    console.log(chalk.green(`Accounts list`));
    console.log(toTable(accountsList, "id", "username", "password", "email", "status"));

    const accessList = await models.access.findAll({
        include: [{
            model: models.account,
            through: {
                attributes: ['id']
            }
        }]
    });
    console.log(chalk.green(`Accesses List`));

    console.log(accessList.map(access => `Access: ${access.role}
${toTable(access.Account, "role", "Access.dataValues.role")}`).join("\n"));
})();
