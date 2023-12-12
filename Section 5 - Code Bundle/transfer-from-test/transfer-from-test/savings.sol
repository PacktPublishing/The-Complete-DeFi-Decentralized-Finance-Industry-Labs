//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";


contract SavingsAccount {
  
  mapping(address => uint) public amountSaved;

  // IERC20 public immutable Token = IERC20(0x0000000000000000000000000000000000000000);
  IERC20 public immutable Token = IERC20(0x9d81fb6D3F148c4167FFaEeb9E6EC8b9E31e3264);

  function deposit(address saver, uint amount) external {
    amountSaved[saver] += amount;
  }
}