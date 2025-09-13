---
icon: bitcoin
description: 'Bitcoin: A Peer-to-Peer Electronic Cash System by Satoshi Nakamoto [4]'
---

# Bitcoin

The paper\[4] introduced the term **chain of blocks**, later to evolve into “**`blockchain`**”, where a chronologically ordered sequence of blocks containing transactions is produced by the protocol.







## Key innovation

Idea of an ordered list of blocks composed of transactions that is cryptographically secured by the PoW mechanism to prevent double-spending in a trustless environment



## Problems Addressed in Bitcoin Blockchain

#### The Bitcoin blockchain which introduced the Bitcoin cryptocurrency, address the problems of&#x20;

* `Double spending` in a completely trustless or permissionless environment
  * `Distributed consensus in a trustless network:` by using **public key cryptography** **with** a **PoW** mechanism to provide a secure and decentralized method of minting digital currency
* SMR: `State Machine Replication` problem
  * Solves the problem by allowing the **replication of blocks at all correct nodes** and ensuring consistency via its **PoW** mechanism.&#x20;
  * Here, the agreement is reached between nodes (or replicas) repeatedly to append new blocks to the blockchain.

