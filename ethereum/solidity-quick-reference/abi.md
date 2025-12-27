# `ABI`: Application Binary Interface

`The JSON ABI` (off‑chain interface description)
- the JSON array of objects tools use to know a contract’s externally callable shape
    - functions, inputs, outputs, events, constructor details
- `public` and `external` **functions** are part of the contract’s external interface
    - so they appear in the JSON ABI and can be called from off‑chain code (or other contracts via external calls)
- `internal` and `private` **functions** are not part of the ABI
    - they have no function selector and cannot be called via external calldata
    - because they’re only callable inside the contract/inheritance graph
