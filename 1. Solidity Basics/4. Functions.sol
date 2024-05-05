// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Function {
    // State variables
    uint num1 = 10;
    uint num2 = 20;
    uint public num3 = 122; // Solidity automatically creates a getter function for num3

    // Addition function (pure)
    function addition() public pure {
        uint a = 10;
        uint b = 20;
        uint c;
        c = a + b;
            
    }

    // Subtraction function (pure)
    function subtraction() public pure returns (uint) {
        uint a = 10;
        uint b = 20;
        return b - a;
    }

    // Multiplication function (view)
    function multiplication() public view returns (uint) {
        return num1 * num2;
    }

    // Division function (pure)
    function division(uint a, uint b) public pure returns (uint) {
        return a / b;
    }
}

