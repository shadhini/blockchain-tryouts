# Control Structures

## Conditional Statements

### if/else

```solidity
if (balance >= amount) {
    balance -= amount;
} else if (balance > 0) {
    balance = 0;
} else {
    revert("Insufficient balance");
}
```

### Ternary Operator

```solidity
uint result = (x > y) ? x : y;
```

## Loops

### for Loop

```solidity
for (uint i = 0; i < array.length; i++) {
    sum += array[i];
}
```

### while Loop

```solidity
while (i < 10) {
    i++;
}
```

### do/while Loop

```solidity
do {
    i++;
} while (i < 10);
```

## Loop Control

### break

skip a loop prematurely
```solidity
for (uint i = 0; i < array.length; i++) {
    if (array[i] == target) {
        break;
    }
}
```

### continue

skip the current iteration and proceed to the next
```solidity
for (uint i = 0; i < array.length; i++) {
    if (array[i] == 0) {
        continue;
    }
    sum += array[i];
}
```

### return

exit from a function and optionally return a value
```solidity
function max(uint a, uint b) public pure returns (uint) {
    return (a > b) ? a : b;
}
```

## Error Handling

### require

validate conditions and revert on failure
```solidity
require(msg.sender == owner, "Not authorized");
```

### assert
check for invariants and internal errors
```solidity
assert(totalSupply >= balance);
```

### revert

explicitly revernt execution with conditional logic
```solidity
if (condition) {
    revert("Error message");
}
```

### try/catch

handle external calls and contract creation failures
```solidity
try externalContract.someFunction() returns (uint value) {
    // Success
} catch Error(string memory reason) {
    // Handle revert with reason
} catch (bytes memory lowLevelData) {
    // Handle other errors
}
```

## Function Modifiers

```solidity
modifier onlyOwner() {
    require(msg.sender == owner, "Not owner");
    _;
}

function withdraw() public onlyOwner {
    // Function body
}
```

[more on modifiers](https://github.com/shadhini/blockchain-tryouts/blob/main/ethereum/solidity-quick-reference/modifiers.md)
