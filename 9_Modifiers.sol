// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Modifiers {
    address public owner;
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function publicFunction() public pure returns (string memory) {
        return "This function is open to everyone.";
    }

    function ownerOnlyFunction() public view onlyOwner returns (string memory) {
        return "This function is restricted to the contract owner.";
    }
}
