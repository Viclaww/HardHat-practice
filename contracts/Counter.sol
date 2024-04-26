// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.24;

contract Counter{
    uint public count;

    constructor (uint _count) {
        count = _count;
    }

    function get() public view returns  (uint) {
        return count;
    }


// function adds to the count 
    function inc() public {
        count += 1;

    }

    // this function reduces by 1 
    // and doesnt works when count is zero
    function dec() public {
        count -= 1;
    }
}