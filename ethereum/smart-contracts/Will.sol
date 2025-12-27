// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

// last will
// upon the demise of grandfather, his assets would be divided among his grandparents
// according to the will, certain Ether amounts will be deposited to grandparents' wallets
contract Will {
    address owner;
    address fortune;
    bool isDeceased;

    constructor () payable {
        owner = msg.sender;  // a global variable that represents the address of the account or contract that initiated the current function call
        // in this case, since the code is inside the constructor, msg.sender refers to the address deploying the contract
        // ensures that the owner variable is set to the address of the entity deploying the contract
        fortune = msg.value; // a global variable that represents the amount of Ether (in wei) sent along with the transaction that invoked the current function
        // since this code is inside the constructor, it captures the Ether sent during the deployment of the contract
        // ensures that the fortune variable is initialized with the Ether value provided at the time of contract creation
        isDeceased = false; // at the time of the contract deployment, the grandfather is still alive
    }

    // create a modifier so that the only person who can call this contract is the owner

    // create a modifier so that we only  allocate funds if grandpa deceased

}
