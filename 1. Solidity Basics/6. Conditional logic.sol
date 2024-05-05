// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Conditional {
    // Function to check a boolean value and return 1 if true, 0 if false
    function check(bool value) public pure returns (uint) {
        if (value) {
            return 1;
        } else {
            return 0;
        }
    }

    // Function to calculate the maximum of two integers
    function max(uint a, uint b) public pure returns (uint) {
        if (a >= b) {
            return a;
        } else {
            return b;
        }
    }

    // Function to check if a number is even or odd
    function isEven(uint number) public pure returns (bool) {
        if (number % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }
}

