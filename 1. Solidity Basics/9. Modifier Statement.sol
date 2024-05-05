// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Modifier {
    uint public num = 10; 
    // Modifier to perform validation based on a boolean condition
    modifier onValid(bool value) {
        require(value == true, "Not valid"); // Revert transaction if value is false
        num = 1; 
      _; // Continue with the execution of the function
    }

    function check1(bool value) public onValid(value) {
        num = 100; // Set num to 100
    }

    function check2(bool value) public onValid(value) {
        num = 200; // Set num to 200
    }

       function check3(bool value) public onValid(value) {
        num = 300; // Set num to 300
    }
}

