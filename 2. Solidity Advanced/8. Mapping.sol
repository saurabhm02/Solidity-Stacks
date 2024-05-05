// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping {
    // Mapping to store key-value pairs
    mapping(uint => uint) public map;

    // Function to insert key-value pairs into the mapping
    function insert(uint key, uint value) public {
        map[key] = value; // Assign the value to the key in the mapping
    }
}

