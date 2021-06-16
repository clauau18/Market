pragma solidity ^0.4.2;
import '../node_modules/openzeppelin-solidity/contracts/token/ERC721/ERC721.sol';

contract MyArtToken is ERC721
{

    function creerOeuvre (uint tokenId) public {
        _mint(msg.sender, tokenId);
    }
}
