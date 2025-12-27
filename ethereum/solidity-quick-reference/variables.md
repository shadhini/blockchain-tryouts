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
- `calldata`: read-only input data for external function parameters (gas-cheaper and can't be modified)
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
