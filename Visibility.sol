// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Visibility {
    uint public publicVar = 1;
    uint private privateVar = 2;
    uint internal internalVar = 3;

    function externalFunction() external view returns (uint) {
        return publicVar;
    }

    function publicFunction() public view returns (uint) {
        return privateVar;
    }

    function internalFunction() internal view returns (uint) {
        return internalVar;
    }

    function privateFunction() private pure returns (string memory) {
        return "This is a private function";
    }

    function testVisibility() public view returns (uint, uint, string memory) {
        uint internalResult = internalFunction(); // Calling internal function
        string memory privateResult = privateFunction(); // Calling private function
        return (internalVar, internalResult, privateResult);
    }
}
