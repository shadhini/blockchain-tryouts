# Solidity Quick Reference
`statically typed`

## `ABI`: Application Binary Interface

`The JSON ABI` (off‑chain interface description)
- the JSON array of objects tools use to know a contract’s externally callable shape
    - functions, inputs, outputs, events, constructor details
- `public` and `external` **functions** are part of the contract’s external interface
    - so they appear in the JSON ABI and can be called from off‑chain code (or other contracts via external calls)
- `internal` and `private` **functions** are not part of the ABI
    - they have no function selector and cannot be called via external calldata
    - because they’re only callable inside the contract/inheritance graph

## Variables

`variables`: named, reserved storage locations for data

###  Variable Declaration

FORMAT: 
```text
<TYPE> <LOCATION[optional]> <VISIBILITY[optional]> <NAME> = <VALUE[initialization:optional]>
```

special modifiers: 
- `constant`: compile-time constant, must be assigned at declaration, gas-cheap for reads
- `immutable`: set once in constructor, then read-only
storage location specifiers (**for reference types**):
- `storage`: reference to contract storage (persistent)
- `memory`: temporary, function-local, not persisted (cheaper for temporary data)
- `calldata`: read-only input data for external function parameters (gas-cheaper and can't be modified)
visibility (for state variables and functions):
- `public` — auto-generated getter for state variables
  - these getters become entries in `JSON ABI`
- `internal` — visible inside contract and derived contracts (default for state variables)
- `private` — visible only in the declaring contract
- `external` — valid only for functions (not for state vars)
types:
- Value types: 
  - `uint`: unsigned integers -- positive whole numbers  
    - `uint256`
  - `int`: signed integers -- positive or negative while numbers 
    - `int256`
  - `address`: for storing Ethereum addresses
  - `bool`: `true` or `false`
  - `bytes<NUMBER>`: for raw byte sequences
    - `bytes1`..`bytes32`
  - `enum`: for custom enumerated types
- Reference/complex types: 
  - `string` 
  - `bytes` (dynamic) 
  - `arrays`
  - `structs`: for defining custom data structues
  - `mapping`


###  Variable Types

state variables: `variables declared at contract scope`
- declared at contract scope
- persistent, stored on-chain
local variable
- declared inside functions
- by default 
  - value types live on the stack
  - reference types require an explicit data location: `memory` or `storage`
- in memory/stack
function parameters 
- `memory` or `calldata`

## Functions

FORMAT
```text
function <NAME>(<PARAMETER_LIST>) <VISIBILITY> <STATE_MUTABILITY> <virtual?> <override?> <MODIFIER_LIST?> returns (<RETURN_LIST>) { 
    // body 
}
```

- PARAMETER_LIST: <TYPE> <NAME>
  - e.g: uint256 x, string calldata s 
- VISIBILITY: `public` | `external` | `internal` | `private`
  - `public`: callable externally & internally; creates ABI entry
  - `external`: callable from other contracts/external callers; slightly cheaper when using `calldata` params 
  - `internal`: callable only inside contract and deriving contracts (no ABI)
  - `private`: only inside the declared contract (no ABI)
- STATE_MUTABILITY: `pure` | `view` | `payable` | `nonpayable` (nonpayable is default)
  - `view`: can read state but not modify state of the contract
  - `pure`: cannot read or modify state 
  - `payable`: allows receiving Ether (used with `msg.value`)
  - if function might modify state, omit `view`/`pure`/`payable` (or use `payable` if it accepts ETH)
- MODIFIER_LIST: zero or more modifiers
  - `onlyOwner`
- RETURN_LIST: (<TYPE> <NAME>, ...) — return variables may be named 
- `virtual` / `override`: used for inheritance 
  - declare `virtual` in base, `override` in derived

  
