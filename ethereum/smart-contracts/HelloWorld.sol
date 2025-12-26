// SPDX-License-Identifier: GPL-3.0
// file’s license in a machine‑readable way

// pragma directive: indicate the solidity version that is being used
pragma solidity ^0.8.0;
// tells the compiler that this code should be compiled with a 
//  Solidity compiler version greater than or equal to `0.8.0` and less than `0.9.0`

contract HelloWorld { // smart contract name: HelloWorld

    // state variables
    string public message;

    // function
    function setMessage(string memory newMessage) public {
        message = newMessage;
    }
    
}
