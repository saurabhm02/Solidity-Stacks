// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Struct {
    // Struct definition for student data
    struct Student {
        string name;
        uint roll;
        bool pass;
    }

    // State variable to store an array of student data
    Student[5] public s1;

    // Function to insert student data into the array
    function insert(uint index, string calldata _name, uint _roll, bool _pass) public {
        // Assign student data to the specified index of s1 directly or using struct constructor
        s1[index] = Student(_name, _roll, _pass);
    }

    // Function to get the array of student data
    function getter() public view returns (Student[5] memory) {
        return s1;
    }
}

