# Ethereum: Smart Contract Development

`smart contracts`: 
- collection of code (functions) and data (state) that resides at a specific address on the Ethereum blockchain 
  - when contract is deployed
`gas fee`:
  -  represent the cost of executing a transaction or computation on the blockchain
every transaction has a gas fee
  - smart contract deployment is also a transaction that requires gas
every time you call a function in a deployed smart contract, it gets recorded on the blockchain 

## REMIX IDE
`Solidity Compiler`:
- translates Solidity code into EVM bytecode (machine language) that can be deployed and executed on the Ethereum blockchain
`Solidity Analyzers`:
- analyze the performance and security of Solidity code

## Compilation Errors
- Syntax errors
- Type errors:
    - e.g: Trying to assign a `string` to a `uint`
- Undeclared variables or functions
- Visibility errors: incorrect usage of `private`, `internal`, `public`, or `external`
- Version mismatches: If your pragma directive specifies a version that the selected compiler doesn't support

## Process

- draft smart contract
- check compile errors: REMIX IDE `Solidity Compiler` tab
- deploy to `testnet` (e.g., Goerli): REMIX IDE `Deploy & Run Transactions` tab
    - `Environment`: tells Remix which blockchain it should connect to for deployment
        - e.g: a simulated JavaScript VM, a testnet like Sepolia, a local blockchain
    - `contract`
    - `account`: the address that will pay for the deployment transaction
      - a gas fee will be deducted from this account upon deployment
    - `gas limi`t: maximum amount of gas you're willing to spend on the deployment transaction
    - `value`: amount of ETH (in wei) to send along with the deployment transaction (if applicable)
    - `Deployed Contracts`: once deployed, your contract will appear here with contract name and address
      - it will show available functions (public interface) and you can interact with them
- interact with deployed contract via REMIX IDE or custom front-end
- test thoroughly on testnet
- Debugging & Troubleshooting
    - REMIX console: logs all your interactions
        - deployment transactions
        - function calls
        - errors or exceptions
        - transaction hashes
- once satisfied, deploy to mainnet

## Pegging tokens created in smart contracts to a native cryptocurrency (e.g., ETH)
`stabilize the token's value agains the blockchain's native/main currency`