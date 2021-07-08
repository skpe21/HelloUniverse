pragma solidity ^0.8.6;

contract HelloUniverse {

  address public ownerAddress;

  constructor() {
    ownerAddress = msg.sender;
  }

  function hello() external view returns(string memory) {
    return "hello";
  }

  function ownerHello() external view onlyOwner returns(string memory) {
      return "hello owner";
  }

  modifier onlyOwner {
    require(ownerAddress == msg.sender);
    _;
  }

}
