// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping {
    // Mapping to track ownership between pairs of addresses
    mapping(address => mapping(address => bool)) public ownership;

    // Function to provide ownership between sender and receiver
    function provideOwnership(address sender, address receiver) public {
        ownership[sender][receiver] = true;     
    }

    // Function to take ownership from sender by receiver
    function takeOwnership(address sender, address receiver) public {
        ownership[sender][receiver] = false; 
    }

    // Function to check ownership status between sender and receiver
    function checkOwnership(address sender, address receiver) public view returns (bool) {
        return ownership[sender][receiver]; 
    }
}

