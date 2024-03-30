pragma solidity 0.8.18;

contract token {
    string public name;
    string public symbol;
    uint256 public totalSupply;

    mapping(address => uint256) public balances;

    constructor(string memory _name, string memory _symbol, uint256 _totalSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _totalSupply;
        balances[msg.sender] = _totalSupply;
    }

    function mint(address _recipient, uint256 _value) external {
        totalSupply += _value;
        balances[_recipient] += _value;
    }

    function burn(address _owner, uint256 _value) external {
        require(balances[_owner] >= _value, "insufficient balance");
        totalSupply -= _value;
        balances[_owner] -= _value;
    }
}
