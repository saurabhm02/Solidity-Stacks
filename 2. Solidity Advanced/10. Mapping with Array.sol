// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingWithArray {
    struct Person {
        string name;
        uint age;
    }
    
    // Declare a mapping that maps addresses to arrays of Person structs
    mapping(address => Person[]) public people;

    // Function to add a new person to the mapping
    function addPerson(address _address, string memory _name, uint _age) public {

        Person memory newPerson = Person(_name, _age);
        people[_address].push(newPerson);
    }
    
    // Function to retrieve the details of a person by their index in the array
    function getPerson(address _address, uint _index) public view returns (string memory, uint) {

        Person memory person = people[_address][_index];
        return (person.name, person.age);
    }
    
    // Function to get the total count of people stored for a given address
    function getPeopleCount(address _address) public view returns (uint) {

        return people[_address].length;
    }
}

