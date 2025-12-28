# Variables

`variables`: named, reserved storage locations for data

##  Variable Declaration

FORMAT:
```text
<TYPE> <LOCATION[optional]> <VISIBILITY[optional]> <MODIFIER_LIST?> <NAME> = <VALUE[initialization:optional]>
```

MODIFIER_LIST - variable special modifiers:
- `constant`: compile-time constant, must be assigned at declaration, gas-cheap for reads
- `immutable`: set once in constructor, then read-only
LOCATION - storage location specifiers (**for reference types**):
- `storage`: reference to contract storage (persistent)
- `memory`: temporary, function-local, not persisted (cheaper for temporary data)
- `calldata`: read-only input data for external function parameters 
  - immutable, cannot be modified within the function
  - gas-cheaper
VISIBILITY - (for state variables and functions):
- `public` — auto-generated getter for state variables
    - these getters become entries in `JSON ABI`
- `internal` — visible inside contract and derived contracts 
  - default for state variables
- `private` — visible only in the declaring contract
- `external` — valid only for functions (not for state vars)
TYPE - types:
- Value types: `uint`--uint256 | `uint8`..`uint256` | `int`--int256 | `int8`..`int256` | `address` | `bool` | `bytes1`..`bytes32` | `enum`
- Reference/complex types: `string` | `bytes` (dynamic) | `arrays` | `structs` | `mapping`


##  Variable Types

**state variables**: `variables declared at contract scope`
- declared at contract scope
- persistent, permanently stored on-chain contract storage
**local variable**
- declared inside functions; accessible only within function scope
- Visibility modifiers (public, private, internal, external) do not apply to local variables; 
  - the compiler will reject them
- local variables live only inside a function
- their behavior is controlled by data location and type, not visibility
- by default
  - value types live on the stack
  - reference types require an explicit data location: `memory` or `storage`
- in memory/stack, they are temporary and discarded after function execution
**function parameters**
- `memory` or `calldata`
**global variables**
- special built-in variables that exists in the global namespace
- [global-variables.md](https://github.com/shadhini/blockchain-tryouts/blob/main/ethereum/solidity-quick-reference/global-variables.md)
