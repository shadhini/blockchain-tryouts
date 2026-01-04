# Steps to Deploy Private Blockchain

1. Install Go-Ethereum (`Geth`) and Puppeth
2. Configure new genesis block 
 - has a `genesis.json` file: contains initial parameters and settings for the blockchain
 - main parameters:
   - `config`: blockchain configuration settings
     - `chainId`: unique identifier for the blockchain network
       - used to prevent replay attacks between different networks
       - each Ethereum network has its own chainId
     - `homesteadBlock`: block number at which Homestead rules activate; set to `0` to enable from genesis block
       - **homestead**: second major release of Ethereum
     - `eip155Block`: block number at which EIP-155 rules activate
       - **eip**: Ethereum Improvement Proposal -- developers proposed ideas to improve Ethereum
     - `eip158Block`: block number at which EIP-158 rules activate
   - `difficulty`: mining difficulty level
     - for a private blockchain, set to a low value to facilitate easy mining
   - `gasLimit`: maximum amount of gas allowed per block; higher values allow more transactions per block
   - `alloc`: pre-allocated accounts with initial balances; used to allocate ETH to an address which serves as pre-funded accounts 
   - `coinbase`: address that receives mining rewards; the default primary account
   - `nonce`: indicate the complexity behind the computation of block
   - `mixHash`: used in the mining process to validate proof-of-work
     - set to 0 if it's a new private blockchain
     - together with `nonce` shows difficulty of mining the block
   - `parentHash`: hash of the parent block; set to 0 for genesis block
   - `timestamp`: time of the operating system when the genesis block is created
   - `extraData`: any additional data to include in the genesis block
3. Initialize the private node/network
4. Create new accounts
5. Create an autonomous private Blockchain
6. Perform transactions internally
7. Start mining ethers

replay attacks
- accessing the network without authentication
- network tapping
- poisoning network in order to gain access to sensitive data
- providing malware to victim computers

## Setup Private Ethereum Blockchain on Ubuntu

```bash
sudo apt-get install software-properties-common

# ( download latest stable Ethereum repository to your sources list)
sudo add-apt-repository -y ppa:ethereum/ethereum
# this will import Public Key for PPA for Ethereum

# install Ethereum on machine
sudo apt-get update
sudo apt-get install ethereum


mkdir ~/privatechain
chmod 777 ~/privatechain

# create an Ethereum account
geth --datadir ~/privatechain -dev account new
# create another account
geth --datadir ~/privatechain -dev account new

# view created accounts
geth --datadir ~/privatechain -dev account list

cd ~/privatechain
```

### Create genesis block 

```bash
# create genesisblock.json file
emacs genesisblock.json
```

```json
{
  "config": {
    "chainId": 123,
    "homesteadBlock": 0,
    "eip155Block": 0,
    "eip158Block": 0
  },
  "nonce": "0x3",
  "timestamp": "0x0",
  "parentHash": "0×000000000000000000000000000000000000000000000000000000000000000",
  "extraData": "0x0",
  "gasLimit": "0x4c4b40",
  "difficulty": "0x400",
  "mixhash": "0x00000000000000000000000000000000000000000000000000000",
  "coinbase": "0x00000000000000000000000000000000",
  "alloc": {
    "<ETHEREUM_ACCOUNT_ADDRESS_1>" : { "balance": "10000000000000" },
    "<ETHEREUM_ACCOUNT_ADDRESS_2>" : { "balance": "100000000000" }
  }
}
```

```bash
# initialize the private blockchain with the genesis block
geth --datadir ~/privatechain init ~/privatechain/genesisblock.json
cd ~/privatechain
```

```text
privatechain
├── geth
│   ├── chaindata
│   ├── lightchaindata
│   └── nodes
└── keystore
```

```bash
# mine the first block
geth --datadir ~/privatechain -mine

# stop mining process
miner.stop()
```
- as you mine, `lightchaindata` and `chaindata` folders will be populated with blockchain data

