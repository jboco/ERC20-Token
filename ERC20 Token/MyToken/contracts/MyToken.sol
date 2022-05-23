pragma solidity ^0.4.24;
import 'openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract MyToken is StandardToken {

    string public constant name = 'My Token';
    string public constant symbol = 'MT';
    uint8 public constant decimals = 2;
    uint constant _initial_supply = 100000000;
    
    constructor  () public {
        totalSupply_ = _initial_supply;
        balances[msg.sender] = _initial_supply;
        emit Transfer(address(0), msg.sender, _initial_supply);
    
    }
    
}
