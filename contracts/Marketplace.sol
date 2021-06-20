pragma solidity ^0.4.2;

import "./MyArtCoin.sol";
import "./MyArtToken.sol";

contract Marketplace {
    address bank 
    MyArtCoin public mat;
    MyArtToken public nft;
    uint256 public tokenPrice;

    function Marketplace(DappToken _tokenContract, uint256 _tokenPrice) public {
        bank = msg.sender;
        tokenContract = _tokenContract;
        tokenPrice = _tokenPrice;
    }

    function buyTokens(uint256 _numberOfTokens) public payable {
        require(msg.value == multiply(_numberOfTokens, tokenPrice));
        require(tokenContract.balanceOf(this) >= _numberOfTokens);
        require(tokenContract.transfer(msg.sender, _numberOfTokens));

        tokensSold += _numberOfTokens;

        Sell(msg.sender, _numberOfTokens);
    }
}
