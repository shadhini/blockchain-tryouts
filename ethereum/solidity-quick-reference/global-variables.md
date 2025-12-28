# Built-in Global Variables

## Caller / transaction globals

`msg.sender` (address payable)
- address of the current caller (address); sender of the message (call)
- the address of the account or contract that initiated the current function call
- use `payable` if you need to send ETH
- if inside a constructor, it represents the address deploying the contract

`msg.value` (uint256)
- uint256 amount of Wei sent with the call
- the amount of Ether (in wei) sent along with the transaction that invoked the current function
- only meaningful in payable functions/constructor
- if inside a constructor, it represents the amount of Ether sent during contract deployment

`msg.data` (bytes calldata)
- bytes `calldata` of the call (raw `calldata`)
- complete calldata (function selector + parameters)

`msg.sig` (bytes4)
- bytes4 function selector (first 4 bytes of `msg.data`)
- function identifier

`tx.origin` (address payable)
- address of the original external account that started the transaction (address)
- avoid using for auth (phishing risk)
- Note: `tx.origin != msg.sender` when calls are chained through other contracts

`tx.gasprice` (uint256)
- gas price of the transaction (pre-EIP-1559)
- For user-supplied transactions it’s set; with EIP-1559 consider basefee + tip patterns

## Block / chain globals

`block.timestamp` (uint256)
- timestamp of current block (seconds since Unix epoch)
- Not precise; don’t rely on for exact time-sensitive randomness

`block.number` (uint256)
- current block number

`block.coinbase` (address)
- address of current block miner/validator
- can be used for miner incentives

`block.difficulty` (uint256)
- current block difficulty
- historically used; after the Merge its semantics changed

`block.prevrandao` (uint256)
- post-merge randomness mix
- use for on-chain randomness carefully; can be manipulated by validators with value limits

`block.basefee` (uint256)
- base fee per gas (EIP-1559)

`block.chainid` (uint256)
- chain id
- useful for replay protection / domain separation

`blockhash(uint blockNumber)` returns bytes32
- block hash for given block number
- only works for most recent 256 blocks excluding current; otherwise returns zero

`block.gaslimit` (uint256)
- gas limit of current block

gasleft() returns (uint256)
- remaining gas


## Address / contract helpers

`address(this)`
- current contract address

`this`
- the contract as an object;
- using `this.functionName` triggers an external call

`address.balance`
- balance in Wei (payable)
- e.g: `address(this).balance`

`payable(addr)`
- cast to address payable to send ETH
- e.g: `payable(msg.sender).transfer(...)`

`transfer/send/call`
- prefer `(bool success, ) = recipient.call{value: amount}(data)` for forwarding gas
- avoid `transfer/send` due to gas stipend issues
  - `transfer` is deprecated
  - e.g: `<ADDRESS>.transfer(amount);`


## Cryptographic & hashing built-ins

`keccak256(bytes memory)` returns bytes32
- most commonly used hash
- e.g: function selectors and mapping keys
- e.g: `bytes32 h = keccak256(abi.encodePacked(a, b));`
`sha256(bytes memory)` returns bytes32
`ripemd160(bytes memory)` returns bytes20
`ecrecover(bytes32 hash, uint8 v, bytes32 r, bytes32 s)` returns address
- recover signer from signature
`abi.encode / abi.encodePacked / abi.encodeWithSelector / abi.encodeWithSignature`
- encoding helpers (watch collisions with encodePacked)

## Math & low-level helpers

`addmod(uint x, uint y, uint k)` returns uint
- (x + y) % k with overflow safety
`mulmod(uint x, uint y, uint k)` returns uint
- (x * y) % k with overflow safety
`gasleft()` returns (uint256)
- remaining gas in current call
`type(T).min` / `type(T).max`
- type introspection for built-in/min/max values

## Misc / utilities

`blockhash(...)`
- noted above
`now`
- alias for `block.timestamp`
- deprecated; don’t use
`revert(), require(), assert()`
- built-in exception helpers (not variables, but often used)
`abi.encodePacked / encode`
- for building calldata and hashing
