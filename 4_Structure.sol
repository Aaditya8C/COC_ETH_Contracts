//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Structure {
    struct Student {
        uint id;
        string name;
    }

    Student public s1;

    constructor(uint _id, string memory _name) {
        s1.id = _id;
        s1.name = _name;
    }

    function change(uint _id, string memory _name) public {
        s1.id = _id;
        s1.name = _name;
    }
}
