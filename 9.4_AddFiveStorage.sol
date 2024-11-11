// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

// ************* Inheritance
//child contract of simplestorage contract
import {SimpleStorage} from "./Storage.sol";

contract AddFiveStorage is SimpleStorage {
    function store(uint256 _newNumber) public override {
        // also make store function
        myFavoriteNumber = _newNumber + 5;
    }
}
