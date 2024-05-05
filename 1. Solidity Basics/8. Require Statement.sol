// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract RequireStatement {
    bool public valid; 
    // Function to check if a number is even
    function isEven(uint a) public {
        // Use the require statement to validate input
        require(a % 2 == 0, "a is odd number"); // Revert transaction if 'a' is odd
        valid = true; // Set valid to true if 'a' is even
    }
}

