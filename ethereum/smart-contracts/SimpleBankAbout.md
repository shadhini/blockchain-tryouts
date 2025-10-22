# Simple Bank About

`SimpleBank` contract

## Purpose
A basic **bank-like** smart contract where users can:

- Deposit ETH (`deposit()`)
- Withdraw ETH (`withdraw()`)
- Check their balance (`checkBalance()`)
- The owner (set in constructor) can transfer ownership (`changeOwner()`).

## Key Components

### 1. State Variables

- `balances`: A `mapping` tracking each user’s ETH balance (private for encapsulation).
- `owner`: Address with admin privileges (set to deployer in constructor).

### 2. Events

- `Deposited`: Emitted on successful deposits.
- `Withdrawn`: Emitted on successful withdrawals.

### 3. Modifiers

- `onlyOwner`: Restricts functions (e.g., `changeOwner`) to the contract owner.

### 4. Functions

- `deposit()`: Payable function to add ETH to the sender’s balance. 
  - Reverts if `msg.value == 0`.
- `withdraw(uint256 amount)`: Sends ETH to the sender and deducts from their balance. 
  - Reverts if insufficient balance.
- `checkBalance()`: View function returning the sender’s balance.
- `changeOwner(address newOwner)`: Owner-only function to transfer ownership.

## Security & Gas Notes

#### ✅ Good Practices:

- Uses `^0.8.0` (safe from overflows/underflows). 
- `onlyOwner` modifier for access control. 
- Input validation (e.g., `msg.value > 0`, balance checks). 
- Events for transparency.

#### ⚠️ Potential Improvements:

- **Reentrancy Risk**: `withdraw()` uses `transfer()` 
(safe, but consider **Checks-Effects-Interactions** pattern for future-proofing):

```solidity
function withdraw(uint256 amount) public {
    require(balances[msg.sender] >= amount, "Insufficient balance");
    balances[msg.sender] -= amount;  // Effect (state change) before interaction
    payable(msg.sender).transfer(amount);  // Interaction
    emit Withdrawn(msg.sender, amount);
}
```

- **Front-Running**: `changeOwner` could be front-run; use **OpenZeppelin’s Ownable** for robust ownership.

- **Gas**: `transfer()` has a fixed 2300 gas stipend (may fail in complex receivers). 
For flexibility, consider `call.value()` with reentrancy guards.

- **Visibility**: `checkBalance()` could be external (saves gas for external calls).


## Suggested Upgrade
```solidity
import "@openzeppelin/contracts/access/Ownable.sol";

contract SimpleBank is Ownable {
mapping(address => uint256) private balances;

    function deposit() public payable {
        require(msg.value > 0, "Amount > 0");
        balances[msg.sender] += msg.value;
        emit Deposited(msg.sender, msg.value);
    }

    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "Transfer failed");
        emit Withdrawn(msg.sender, amount);
    }

    function checkBalance() external view returns (uint256) {
        return balances[msg.sender];
    }
}

```

### Changes:

- Inherits **Ownable** for secure ownership. 
- Uses **call + reentrancy** guard (if added) for flexibility. 
- `checkBalance` is external.

---
AI Generated: Mistral AI

---
