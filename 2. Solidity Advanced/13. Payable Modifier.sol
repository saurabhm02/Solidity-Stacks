// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.9.0;

contract Payable {
    // Address of the contract owner
    address public owner;

    // Constructor to set the contract owner
    constructor() {
        owner = msg.sender;
    }

    // Function to send Ether to a specified address
    function sendEtherToAddress(address receiver) public payable {
           payable(receiver).transfer(msg.value);
    }

    // Function to return the balance of the contract
    function returnBalance() public view returns(uint) {
        return address(this).balance;
    }
}

