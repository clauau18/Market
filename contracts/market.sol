pragma solidity >=0.4.2;

contract market {
  // Store candidate
  // Read candidate
  string public id;// state variable
  // Constructor
  constructor () public { //public because it is run whenever we deploy the smart contract on blockchain
    id = "id 1";
  }
}
