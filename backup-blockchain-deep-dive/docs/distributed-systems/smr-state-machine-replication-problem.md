---
description: introduced in 1978 by Leslie Lamport and formalised in 1980 by Fred Schneider
icon: seal-question
---

# SMR: State Machine Replication Problem

> _**SMR: State Machine Replication**_
>
> A scheme used to implement a **fault-tolerant service** by **replicating data (state)** between nodes in a distributed system.



#### Bitcoin Solves the problem by

* allowing the **replication of blocks at all correct nodes** and ensuring consistency via its **PoW** mechanism.&#x20;
* Here, the agreement is reached between nodes (or replicas) repeatedly to append new blocks to the blockchain.
