pragma solidity ^0.4.2;
import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';

contract MyArtCoin is ERC20
{

    mapping(address => bool) public inscrits;
    //Stocke les adresses qui ont déjà demandé les mac gratuit
    mapping(address => bool) public adresses;

    //Créer token ERC20
    function macGratuit () public {
        _mint(msg.sender, 1000);
    }

    constructor() public { 
        _mint(msg.sender, 1000000); 
    }

}
