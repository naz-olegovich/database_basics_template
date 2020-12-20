const access = require('../../src/js/models/access');
const account = require('../../src/js/models/account');
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
    const accountsList = await account.Account.findAll();
    console.log(chalk.green(`Accounts list`));
    console.log(toTable(accountsList, "id", "username", "password", "email", "status"));

    const accessList = await access.Access.findAll({
        include: [{
            model: account.Account,
            attributes: ['id']
        }]
    });
    
    console.log(chalk.green(`Accesses List`));
    console.log(toTable(accessList, "role", "account_id"));
})();
