pragma solidity ^0.4.2;
import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';

contract MyArtCoin is ERC20
{
    string  public name = "MyArtCoin";
    string  public symbol = "MAC";

    mapping(address => bool) public inscrits;
    //Stocke les adresses qui ont déjà demandé les mac gratuit
    mapping(address => uint256) balances;
    mapping(address => bool) public adresses;

    //Créer token ERC20
    //function claimMac () public {
    //    transferFrom(this, msg.sender, 1000);
    //}

    constructor() public {
        _mint(this, 1000000);
    }

}
