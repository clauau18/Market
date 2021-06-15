const MyArtToken = artifacts.require("MyArtToken");
const MATokenSale = artifacts.require("MATokenSale");
// dans truffle console on appelle par le nom du fichier par de la variable
module.exports = function(deployer) {
  deployer.deploy(MyArtToken, 1000000).then(function() {
    // Token price is 0.001 Ether
    var tokenPrice = 1000000000000000;
    return deployer.deploy(MATokenSale, MyArtToken.address, tokenPrice);
  });
};
