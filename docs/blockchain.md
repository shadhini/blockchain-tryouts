---
icon: hive
---

# Blockchain

> **`Blockchain`**
>
> * A **distributed ledger** that can be centralized or decentralized.
> * A **message-passing** distributed system.
> * A means of achieving State Machine Replication (**SMR**).

* Originally intended to be and is usually used a s a decentralized platform.

{% hint style="success" %}
Blockchain is a **decentralized-distributed** system.
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



## Privacy and Anonymity&#x20;

— sought-after features on the blockchain

