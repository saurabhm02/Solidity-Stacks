// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract memoryVSstorageKeyword {
    uint[5] public arr = [1, 2, 3, 4, 5];

    // Function to demonstrate the storage keyword
    function storageKeyword() public {
        uint[5] storage brr; // Declaring a new fixed-size array with the storage keyword
        brr = arr; // Assigning arr to brr (brr acts as a pointer to the storage location of arr)
        brr[0] = 6; // Modifying the value at the 0th index of brr (also modifies arr)
    }

    // Function to demonstrate the memory keyword
    function memoryKeyword() public view {
        uint[5] memory crr; // Declaring a new fixed-size array with the memory keyword
        crr = arr; // Assigning arr to crr (crr is a copy of arr and does not reference the storage location of arr)
        crr[0] = 9; // Modifying the value at the 0th index of crr (does not affect arr)
    }
}

