// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./SimpleStorage.sol";
/** INHERITANCE  */
contract ExtraStorage is SimpleStorage {
    /** Function Overriding  */
    function store(uint _favNumber) public override returns(bool) {
        favNumber = _favNumber + 1;
        return true;
    }
}