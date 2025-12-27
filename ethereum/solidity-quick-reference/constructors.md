# Constructors

FORMAT
```text
constructor(<PARAMETER_LIST>) <MODIFIER_LIST?> <STATE_MUTABILITY> {
    // body 
}
```
- special function executed once at contract deployment
- no return type
- represented in the JSON ABI as an entry with "type": "constructor"
- they are not callable after deployment

<STATE_MUTABILITY>
- `payable`: allows sending/receiving ETH at deployment
