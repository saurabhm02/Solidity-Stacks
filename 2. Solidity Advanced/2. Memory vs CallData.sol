// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract MemoryVsCalldata {
    // Function using memory - mutable case
    function multiply0thindexBy2(uint[3] memory num) public pure returns (uint[3] memory) {
        num[0] = 2 * num[0]; // Modify the value at the 0th index of the array
        return num; // Return the modified array
    }

    // Function using calldata - immutable case
    function readData(uint[3] calldata arr) public pure returns (uint) {
        uint a = arr[0]; // Read the value at the 0th index of the array
        a = a * 2; // Multiply the value by 2 (local variable 'a' is mutable)
        return a; // Return the modified value
    }
}

