//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./savings.sol";

contract Manager {
  
  // IERC20 public immutable Token = IERC20(0x0000000000000000000000000000000000000000);
  IERC20 public immutable Token = IERC20(0x9d81fb6D3F148c4167FFaEeb9E6EC8b9E31e3264);
  SavingsAccount savings = SavingsAccount(0xD39B0c0FD7Ca34acD6151dE15d30d39B6C66738d);

  function depositUserTokens(uint amount) external returns (bool) {

    address savingsAddress = address(savings);
    bool transferred = Token.transferFrom(msg.sender, savingsAddress, amount);

    savings.deposit(msg.sender, amount);
    
    return transferred;
  }
}