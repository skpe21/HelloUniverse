pragma solidity ^0.8.6;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/9fbc1d71c0ed4c68a0bc160c69df1f85e94d2d8e/contracts/utils/math/SafeMath.sol";

contract HelloUniverse {

  address public ownerAddress;
  // solidity compiler 0.8 and above has overflow checks so SafeMath not really needed
  using SafeMath for uint;

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

  function add(uint _a, uint _b) public pure returns(bool, uint) {
      return _a.tryAdd(_b);
  }

  function sub(uint _a, uint _b) public pure returns(bool, uint) {
      return _a.trySub(_b);
  }
  
  function mul(uint _a, uint _b) public pure returns(bool, uint) {
      return _a.tryMul(_b);
  }

  function div(uint _a, uint _b) public pure returns(bool, uint) {
      return _a.tryDiv(_b);
  }

  function mod(uint _a, uint _b) public pure returns(bool, uint) {
      return _a.tryMod(_b);
  }

}
