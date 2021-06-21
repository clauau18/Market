var Migrations = artifacts.require("./Migrations.sol");
var MyArtToken = artifacts.require("./MyArtToken.sol");
var MyArtCoin = artifacts.require("./MyArtCoin.sol");
var Marketplace = artifacts.require("./Marketplace.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(MyArtToken);
  deployer.deploy(MyArtCoin);
  deployer.deploy(Marketplace);
};
