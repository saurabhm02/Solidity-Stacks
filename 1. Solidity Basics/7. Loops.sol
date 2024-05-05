// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Conditional {
    function check(bool value) public pure returns (uint) {
        if (value == true) {
            return 1;
        } else {
            return 0;
        }
    }

    // Function to calculate the sum of numbers from 1 to 'size' using a for loop
    function calculateSum(uint size) public pure returns (uint) {
        uint sum = 0;
        for (uint i = 1; i <= size; i++) {
            sum += i;
        }
        return sum;
    }
}

