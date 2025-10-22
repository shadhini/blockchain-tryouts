// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBank {
    // State variables
    mapping(address => uint256) private balances;
    address public owner;

    // Events
    event Deposited(address indexed _from, uint256 _value);
    event Withdrawn(address indexed _to, uint256 _value);
    
    // Constructor
    constructor() {
        owner = msg.sender;
    }

    // Modifiers
    modifier onlyOwner {
        require(msg.sender == owner, "You are not authorized");
        _;
    }

    // Functions
    
    // Deposit funds into the account
    function deposit() public payable {
        require(msg.value > 0, "Amount should be greater than zero");
        balances[msg.sender] += msg.value;
        emit Deposited(msg.sender, msg.value);
    }
    
    // Withdraw funds from the account
    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
        emit Withdrawn(msg.sender, amount);
    }
    
    // Check account balance
    function checkBalance() public view returns (uint256) {
        return balances[msg.sender];
    }
    
    // Manage account - Only the owner can do this
    function changeOwner(address newOwner) public onlyOwner {
        owner = newOwner;
    }
}
