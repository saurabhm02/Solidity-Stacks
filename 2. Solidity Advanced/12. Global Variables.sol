// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GlobalVariable {
    // Function to return the current block timestamp
    function returnTime() public view returns (uint) {
        return block.timestamp;
    }

    // Function to return the address of the caller
    function callerAddress() public view returns (address) {
        return msg.sender;
    }

    // Function to return the amount of Ether sent with the function call
    function ethSenderValue() public payable returns (uint) {
        return msg.value;
    }
}

