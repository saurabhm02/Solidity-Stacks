// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Array {
    // Fixed-size array declaration
    uint[5] public arr;

    // Dynamic-size array declaration
    uint[] public arr1;

    // Fixed-size array initialization
    uint[5] public ar = [1, 2, 3];

    // Function to insert an element into the fixed-size array
    function insertelement(uint index, uint element) public {
        ar[index] = element;
    }

    // Function to return the element at the specified index from the fixed-size array
    function returnElement(uint index) public view returns (uint) {
        return ar[index];
    }

    // Function to return all elements of the fixed-size array
    function returnAllElements() public view returns (uint[5] memory) {
        return ar;
    }
}

