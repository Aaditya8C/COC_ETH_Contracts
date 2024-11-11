//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Local {
    uint public count;
    string public name;
    address public owner;
    uint public money = 0 ether;

    constructor(uint _count, string memory _name) {
        owner = msg.sender;
        count = _count;
        name = _name;
    }

    function increment(uint _value) public {
        count = count + _value;
    }

    function get() public view returns (string memory) {
        return name;
    }

    function payMe() public payable {
        require(msg.value > 0 ether, "Pay me more");
        money = money + msg.value;
    }
}
