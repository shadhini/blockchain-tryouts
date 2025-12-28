# Constructors

FORMAT
```text
constructor(<PARAMETER_LIST>) <MODIFIER_LIST?> <STATE_MUTABILITY> {
    // body 
}
```
- special function executed once at contract deployment
- no return type
- initializes contract state variables and performs setup tasks upon deployment
- represented in the JSON ABI as an entry with "type": "constructor"
- they are not callable after deployment
- if there is no explicit constructor, a default no-argument constructor is provided

<STATE_MUTABILITY>
- `payable`: allows sending/receiving ETH at deployment
