// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8 ;
import "./SimpleStorage.sol";
contract StorageFactory {
    event simpleStorageEvent(SimpleStorage[] _simpleStorage);
    
    /** Creating array of Contracts */
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorage() public  {
         SimpleStorage simpleStorage = new SimpleStorage();
        /** Pushing the variable to the array */
        simpleStorageArray.push(simpleStorage);
        emit simpleStorageEvent(simpleStorageArray);
    }

    function storeFavNum(uint _simpleStorageIndex, uint _number) public {
        /** Gives the Contract from the contract array  */
        SimpleStorage _simpleStorage = simpleStorageArray[_simpleStorageIndex];
        _simpleStorage.store(_number);
    }
    
    function getFavNum(uint _simpleStorageIndex) public view returns (uint) {
        SimpleStorage _simpleStorage = simpleStorageArray[_simpleStorageIndex];
        return _simpleStorage.retrieve();
    }
}