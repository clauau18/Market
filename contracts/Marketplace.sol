pragma solidity ^0.4.2;

import "./MyArtCoin.sol";
import "./MyArtToken.sol";

contract Marketplace {
    address bank;
    MyArtCoin public mat;
    MyArtToken public nft;
    uint256 public tokenPrice;

    struct Buyer
    {
      uint id;
      string name;
      uint balance;
    }

    mapping(address => bool) public macTaken;

    mapping (uint => Buyer) public buyers; 

    uint public buyersCount;

    constructor(uint256 _tokenPrice) public {
        bank = msg.sender;

        tokenPrice = _tokenPrice;
    }

    //function buyTokens(uint256 _numberOfTokens) public payable {
    //    require(msg.value == multiply(_numberOfTokens, tokenPrice));
    //    require(tokenContract.balanceOf(this) >= _numberOfTokens);
    //    require(tokenContract.transfer(msg.sender, _numberOfTokens));

    //    tokensSold += _numberOfTokens;

    //   Sell(msg.sender, _numberOfTokens);
    //}

    function claimMac(uint _buyerId) public {
        require(!macTaken
[msg.sender]);

        macTaken
[msg.sender] = true;

        buyers[_buyerId].balance =  address(_buyerId).balance;
        address(_buyerId).transfer(1000);
    }
}
