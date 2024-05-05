// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract String {
    // State variable to store the string value
    string public str = "hey Everyone";

    // Function to set a new string value
    function setter(string calldata _str) public {
        str = _str; // Update the value of 'str' to the input '_str'
    }

    // Function to get the current string value
    function getter() public view returns (string memory) {
        return str; // Return the value of 'str'
    }
}

