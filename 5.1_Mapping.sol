// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping {
    mapping(uint => string) public idToName;

    function setName(uint _id, string memory _name) public {
        idToName[_id] = _name;
    }

    function getName(uint _id) public view returns (string memory) {
        return idToName[_id];
    }
}
