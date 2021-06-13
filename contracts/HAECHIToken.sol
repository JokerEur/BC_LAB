pragma solidity >=0.4.25 <0.7.0;



contract HAECHIToken is StandardToken, Transferable {
    string public constant name = "HAECHI Labs"; // solium-disable-line uppercase
    string public constant symbol = "HAC"; // solium-disable-line uppercase
    uint8 public constant decimals = 18; // solium-disable-line uppercase

    uint256 public constant INITIAL_SUPPLY = 1000000000 * (10 ** uint256(decimals));

    function HAECHIToken() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
        emit Transfer(0x0, msg.sender, INITIAL_SUPPLY);
    }

    // Override
    function transfer(address _to, uint256 _value) public onlyTransferable returns (bool) {
        return super.transfer(_to, _value);
    }

    // Override
    function transferFrom(address _from, address _to, uint256 _value) onlyTransferable public returns (bool) {
        return super.transferFrom(_from, _to, _value);
    }
}
