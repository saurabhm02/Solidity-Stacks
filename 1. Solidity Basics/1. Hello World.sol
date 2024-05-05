// SPDX-License-Identifier: MIT // This line specifies the license identifier for the contract, indicating that it is licensed under the MIT License.

pragma solidity >=0.6.12 <0.9.0; // This line specifies the version of Solidity required to compile the contract. It indicates that any version of Solidity greater than or equal to 0.6.12 and less than 0.9.0 can be used.

contract HelloWorld { // This line declares the start of the contract named HelloWorld.

  function print() public pure returns (string memory) {
    // This line defines a function named "print". 
    // The function is declared as "public", meaning it can be called from outside the contract.
    // The "pure" keyword indicates that the function does not modify the contract's state.
    // The function returns a value of type "string memory", which means it returns a string stored in memory.

    return "Hello World!"; // This line returns the string "Hello World!" when the function is called.
  }
}

