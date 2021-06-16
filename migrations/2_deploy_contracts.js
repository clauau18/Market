var MyArtToken = artifacts.require("./MyArtToken.sol");
var MyArtCoin = artifacts.require("./MyArtCoin.sol");

module.exports = function(deployer) {
  deployer.deploy(MyArtToken);
  deployer.deploy(MyArtCoin);
};
