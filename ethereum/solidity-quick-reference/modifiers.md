# Modifiers

`reusable pieces of code that you can attach to functions (and constructors)`

typically used for 
- access control
- pre- and post-conditions 
- reusable checks
- input checking / validation
- state checks
- reentrancy guards
- time-based restrictions
- cost/payment requirements

they let you factor out common require/assert logic and run code before and/or after the function body
- The underscore `_`: represents where the modified function's body will be inserted
- **Gas efficiency**: Modifiers are inlined during compilation, not separate function calls


FORMAT
```solidity
modifier <MODIFIER_NAME>(<PARAMETER_LIST?>) {
    // pre-condition code
    require(condition, "Error message");
    _; // this underscore represents where the modified function's code will execute
    // post-condition code
}
```


You can apply multiple modifiers to a single function. They execute in the order they're listed.
```solidity
function complexFunction() 
    public 
    onlyOwner 
    validAddress(msg.sender) 
    noReentrancy 
{
    // Function body
}
```

## Built-in Modifiers
Built-in Solidity function attributes / modifiers:
- `view`
  - reads state but does not modify it
  - can be called off-chain without gas
- `pure` 
  - does not read or modify state
- `payable`
  - allows a function to receive Ether
  - @ constructor: allows the contract to receive and store Ether sent along with the deployment transaction
- `virtual`  
  - marks a function as overridable by derived contracts
- `override` 
  - used in a derived contract to override a virtual function 
  - can list base names if ambiguous
- Visibility specifiers (function attributes, not user modifiers): 
  - `public`, `external`, `internal`, `private`
- Special functions: 
  - `receive()` 
    - must be `external payable` to accept plain Ether transfers 
  - `fallback()` 
    - `external` — can be `payable`
- Variable attributes (not functions): 
  - `constant` - compile-time constant 
  - `immutable` - assigned once in constructor
