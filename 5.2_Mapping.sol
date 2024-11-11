// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserProfile {
    struct User {
        string name;
        uint age;
    }

    mapping(uint => User) public users;

    function setUser(uint _id, string memory _name, uint _age) public {
        users[_id] = User(_name, _age);
    }

    function getUser(uint _id) public view returns (string memory, uint) {
        User memory user = users[_id];
        return (user.name, user.age);
    }
}
