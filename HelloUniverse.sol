pragma solidity ^0.8.6;

contract HelloUniverse {

  address public ownerAddress;

  constructor() {
    ownerAddress = msg.sender;
  }

  function hello() external view returns(string memory, address) {
    return ("hello", msg.sender);
  }

  function ownerHello() external view onlyOwner returns(string memory, address) {
      return ("hello owner", msg.sender);
  }

  modifier onlyOwner {
    require(ownerAddress == msg.sender);
    _;
  }

}
