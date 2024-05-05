// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract StringCompare {
    // Function to compare two strings
    function compareString(string memory str1, string memory str2) public pure returns (bool) {
        // Compare the keccak256 hashes of the strings and return the result
        return keccak256(abi.encodePacked(str1)) == keccak256(abi.encodePacked(str2));
    }
}


contract StringConcator{
    // Function to concatinating two strings
    function concatString(string memory str1, string memory str2) public pure returns(string memory){
        return string.concat(str1, str2);
    }
}


