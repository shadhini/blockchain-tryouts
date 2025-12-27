# Functions

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
