---
icon: hive
---

# Blockchain

> **`Blockchain`**
>
> * A **distributed ledger** that can be centralized or decentralized.
> * A **message-passing** distributed system.
> * A means of achieving State Machine Replication (**SMR**).
> *   An **immutable** and **tamper-proof** ledger of transactions.
>
>

* Originally intended to be and is usually used as a decentralized platform.

{% hint style="success" %}
Blockchain is a **decentralized-distributed** system.
{% endhint %}

{% hint style="info" %}
Introduced with Bitcoin blockchain in 2008 \[4]
{% endhint %}

## Technical Definition

> **Blockchain** is a&#x20;
>
> * peer-to-peer,&#x20;
> * distributed ledger&#x20;
> * that is cryptographically secure,&#x20;
> * append-only,&#x20;
> * immutable (extremely hard to change), and&#x20;
> * updatable only via consensus among peers.



#### Peer-to-peer (P2P):&#x20;

> There is **no central controller** in the network, and all participants (nodes) talk to each other directly.

* allows transactions to be conducted directly among the peers **without third-party** involvement, such as by a bank.&#x20;



#### Distributed ledger:&#x20;

> A ledger is spread across the network among all peers in the network, and&#x20;
>
> **each peer holds a copy of the complete ledger**.



#### Cryptographically secure:&#x20;

Cryptography has been used to provide security services such as&#x20;

* **non-repudiation**,&#x20;
* **data integrity**, and&#x20;
* **data origin authentication**

that make the ledger **secure against tampering and misuse**.&#x20;



#### Append-only:&#x20;

> Data can only be added to the blockchain in time-sequential order.

Implies that once data is (blocks are) added to the blockchain, it is almost impossible to change that data (blocks) and it can be considered practically **immutable**.&#x20;



#### Updatable via consensus:&#x20;

— updatable only via consensus

— This gives the power of **`decentralisation`**.&#x20;

In this scenario, **no central authority** is in control of updating the ledger. Instead, any update made to the blockchain is validated against strict criteria defined by the blockchain protocol and added to the blockchain only **after consensus** has been reached among a majority of participating peers/nodes on the network.&#x20;

To achieve consensus, there are various **consensus algorithms** that ensure all parties agree on the final state of the data on the blockchain network and resolutely agree upon it to be true.





{% hint style="info" %}
Layman’s definition:&#x20;

Blockchain is an&#x20;

* ever-growing,&#x20;
* secure,&#x20;
* shared record-keeping system&#x20;
* in which each user of the data holds a copy of the records,&#x20;
  * which can only be updated if a majority of parties involved in a transaction agree to update.&#x20;
{% endhint %}

## Application of CAP Theorem to Blockchain

In blockchain, **Consistency is sacrificed** in favour of _Availability_ and _Partition tolerance_.

* In this scenario, _Consistency_ is not achieved simultaneously with _Partition tolerance_ and _Availability_, but it is achieved over time.

╰**---**➤ This is called **eventual Consistency**; where _Consistency_ is achieved due to validation from multiple nodes over time.

* There can be a temporary disagreement between nodes on the final state, but it is eventually agreed upon.



{% hint style="info" %}
In Bitcoin,

Multiple confirmations of a transaction over time provide **eventual consistency**.&#x20;

* Multiple confirmations are used to build good confidence that transactions may not be rolled back in the future.&#x20;

For this purpose, the process of **mining;** a `Proof of Work (PoW)` consensus algorithm was introduced in Bitcoin.
{% endhint %}



