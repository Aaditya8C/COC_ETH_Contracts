// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.26;

contract Token {
    mapping(address => uint) public balances;

    event Transfer(address indexed from, address indexed to, uint amount);

    constructor() {
        balances[msg.sender] = 1000;
    }

    function transfer(address to, uint amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");

        balances[msg.sender] -= amount;
        balances[to] += amount;

        emit Transfer(msg.sender, to, amount);
    }
}
