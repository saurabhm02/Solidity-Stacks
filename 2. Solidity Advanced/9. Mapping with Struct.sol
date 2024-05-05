// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingWithStruct {
       struct Person {
        string name;
        uint age;
    }
    
    // Declare a mapping that maps addresses to Person structs
    mapping(address => Person) public people;

    // Function to add a new person to the mapping
    function addPerson(address _address, string memory _name, uint _age) public {

        Person memory newPerson = Person(_name, _age);  
        people[_address] = newPerson;
    }
    
    // Function to retrieve the details of a person by their address
    function getPerson(address _address) public view returns (string memory, uint) {

        Person memory person = people[_address];
        return (person.name, person.age);
    }
}

