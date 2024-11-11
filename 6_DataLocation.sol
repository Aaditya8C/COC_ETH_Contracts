// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.26;

contract ColorStorage {
    function sumArray(uint[] memory array) public pure returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < array.length; i++) {
            sum += array[i];
        }
        return sum;
    }

    function Sum(uint[] calldata array) public pure returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < array.length; i++) {
            sum += array[i];
        }
        return sum;
    }

    mapping(address => string) private favoriteColors;

    function setFavoriteColor(string calldata color) public {
        favoriteColors[msg.sender] = color;
    }

    function getFavoriteColor(
        address userAddress
    ) public view returns (string memory) {
        return favoriteColors[userAddress];
    }
}
