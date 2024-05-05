// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Struct {
    // Struct definition for student data
    struct Student {
        string name;
        uint roll;
        bool pass;
    }

    // State variable to store student data
    Student public s1;

    // Function to insert student data
    function insert(string calldata _name, uint _roll, bool _pass) public {
        // Assign student data to s1 directly or using struct constructor
        s1 = Student(_name, _roll, _pass);
    }

    // Function to get student data
    function getter() public view returns (Student memory) {
        return s1;
    }
}

