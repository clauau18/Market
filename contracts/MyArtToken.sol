pragma solidity ^0.4.2;
import '../node_modules/openzeppelin-solidity/contracts/token/ERC721/ERC721.sol';

contract MyArtToken is ERC721
{


    mapping (uint => MyArtToken) public nfts; 

    uint public nftCount;

    struct nft
    {
      uint id;
      string name;
      uint date; // a transformer en timestamp dans le JS
      mapping(address => address) owners;
    }
    mapping(address => nft) actualOwner;


    //function CreateNFT (uint _id, string _name, uint _date, address owner) private  //private beacause we don't want anyone else to add artist // only the contract will do
    //{
        //nft(_id,_name,_date,owner );
    //}

    constructor() public 
    {
       
    }

    //function createNFT(uint _id, string _name, string _date, addressc _compte) private 
    //{
    //  nftCount ++;
    //  nfts[nftCount] = nfts(_id, _name, _date, _compte);
    //}

}
