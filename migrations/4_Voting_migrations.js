const Voting = artifacts.require("Voting");

module.exports = function(deployer,accounts) {
    const owners = accounts.slice(0,3);
    deployer.deploy(Voting,owners,"some");
    };