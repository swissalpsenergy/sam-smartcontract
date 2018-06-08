pragma solidity ^0.4.23;

import "./PausableToken.sol";
import "./MintableToken.sol";
import "./BurnableToken.sol";


contract SAMToken is PausableToken, MintableToken, BurnableToken {
    string public name = "SwissAlpsMining";
    string public symbol = "SAM";
    uint public decimals = 18;
    uint public INITIAL_SUPPLY = 239682538 * (10 ** uint256(decimals));

    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
        emit Transfer(0x0, msg.sender, INITIAL_SUPPLY);
    }
}

