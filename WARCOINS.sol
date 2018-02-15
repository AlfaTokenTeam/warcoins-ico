pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract WARCOINS is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function WARCOINS(address _owner)  UpgradeableToken(_owner) {
    name = "WARCOINS";
    symbol = "WAR";
    totalSupply = 10000000000;
    decimals = 0;

    balances[_owner] = totalSupply;
  }
}