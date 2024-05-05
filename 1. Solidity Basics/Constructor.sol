// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract ConstructorOnly {
    uint public data;

    // Constructor
    constructor(uint initialValue) {
        data = initialValue;
    }
}

