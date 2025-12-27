// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

// last will
// upon the demise of grandfather, his assets would be divided among his grandparents
// according to the will, certain Ether amounts will be deposited to grandparents' wallets
contract Will {
    address owner;
    uint fortune;
    bool isDeceased;

    constructor () payable public { // the payable keyword allows the contract to receive and store Ether sent along with the deployment transaction
        owner = msg.sender;  // a global variable that represents the address of the account or contract that initiated the current function call
        // in this case, since the code is inside the constructor, msg.sender refers to the address deploying the contract
        // ensures that the owner variable is set to the address of the entity deploying the contract
        fortune = msg.value; // a global variable that represents the amount of Ether (in wei) sent along with the transaction that invoked the current function
        // since this code is inside the constructor, it captures the Ether sent during the deployment of the contract
        // ensures that the fortune variable is initialized with the Ether value provided at the time of contract creation
        isDeceased = false; // at the time of the contract deployment, the grandfather is still alive
    }

    // create a modifier so that the only person who can call this contract is the owner
    modifier onlyOwner {
        require(msg.sender == owner); // continue to the function if this evaluation is true
        _;
    }


    // create a modifier so that we only  allocate funds if grandpa deceased
    modifier mustBeDeceased {
        require(isDeceased == true);
        _;
    }

    // family wallet addresses to be paid upon demise of grandfather
    address payable[] familyWallets;

    // inheritance of each family member
    mapping(address => uint) inheritance;

    // set inheritance for each address
    function setInheritance(address payable wallet, uint amount) public onlyOwner {
        familyWallets.push(wallet);
        inheritance[wallet] = amount;
    }

    // pay each family member based on their wallet address
    function payout() private  mustBeDeceased  {
        for (uint8 i=0; i < familyWallets.length; i++) {
            // transferring the funds from contract address to receiver address
            // familyWallets[i].transfer(inheritance[familyWallets[i]]); // transfer is deprecated
            (bool sent, ) = familyWallets[i].call{value: inheritance[familyWallets[i]]}("");
            require(sent, "Transfer failed");
        }
    }

    // deceased trigger: in a real world scenario this would be connected to an Oracle and that would notify the demise and trigger this smart contract
    // How it’s usually done:
    //  a trusted service or decentralized oracle (e.g. Chainlink) sends a signed on-chain transaction or calls a contract function
    // Best practices: prefer multiple confirmations, emit events, use a time delay, require authorized signer(s), prefer a pull-payment (withdraw) pattern instead of looping transfer


    // contract would be triggered by whoever has the access to the wallet
    function deceased() public onlyOwner {
        isDeceased = true;
        payout();
    }
}


// Example Scenario for contract Will

// 1. Grandpa with wallet A deploy the `Will` smart contract with 30 ETH
// - that means, there will be a fund of 30 ETH as the fortune
// 2. Grandpa calls setInheritance() for his granddaughter Susie;
//      a transaction to set inheritance of 5 ETH to wallet address B of Susie
// 3. Grandpa calls setInheritance() for his grandson Tom:
//      a transaction to set inheritance of 25 ETH to wallet address C of Tom
// 4. now grandpa passes away
// 5. someone with hold of his wallet/account/address on behalf of him; say insurance company
//      calls the deceased() function to trigger transactions to payout the inheritance
// - in real world scenario this would be a external trigger
// - once this transaction is triggered 30 ETH would be deducted from grandpa's account and
//      respectively 5 ETH  & 25 ETH would be deposited in Susie's and Ton's wallets
