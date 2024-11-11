// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandling {
    address public owner;
    uint public balance;

    constructor() {
        owner = msg.sender; // Set the contract deployer as the owner
    }

    function deposit(uint amount) public payable {
        require(amount == msg.value, "Amount mismatch");
        require(amount > 0, "Amount must be positive");

        balance += amount;
    }

    function withdraw(uint amount) public {
        if (msg.sender != owner) {
            revert("Only owner can withdraw");
        }
        if (amount > balance) {
            revert("Insufficient balance");
        }

        balance -= amount;
        payable(msg.sender).transfer(amount);
    }

    function resetBalance() public {
        require(msg.sender == owner, "Only owner can reset");
        balance = 0;
        assert(balance == 0); // Ensure balance is zero
    }
}
