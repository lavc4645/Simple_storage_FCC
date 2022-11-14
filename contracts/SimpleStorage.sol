
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8 ;
contract SimpleStorage {
    uint favNumber; 
    bool status;
    mapping (string => uint) public nameToFavNumber;

    struct People {
        uint favNumber;
        string name;
    }

    /** Array of Struct */
    People[] public people;

    function store(uint _favNumber) public  returns (bool) {
        favNumber= _favNumber;
        return true;
    }
    function retrieve() public view returns(uint) {
        return favNumber;
    }
    function addPerson(string memory _name, uint _favNumber) public {
        people.push(People(_favNumber,_name));
        nameToFavNumber[_name] = _favNumber;

    }
}