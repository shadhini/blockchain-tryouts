// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract SimpleStorage {

    uint storedData = 23;

    function set(uint number) public  {
        storedData = number;
    }

    function get() public view returns (uint) {
        return 5 * storedData;
    }

}