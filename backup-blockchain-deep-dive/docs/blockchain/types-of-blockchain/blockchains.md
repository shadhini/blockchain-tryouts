---
icon: hive
---

# Blockchains

`public` | `private` | `semi-private` or `hybrid` | `fully private and proprietary`

`permissioned` | `permissionless`

`tokenized` | `tokenless`



## Public Blockchains

> **Public Blockchain**:
>
> * not owned by anyone
> * open to the public; anyone can participate as a node
> * users may or may not be rewarded for their participation
> * “**permissionless**” ledgers&#x20;
> * all users maintain a copy of the ledger on their local nodes and use a distributed consensus mechanism to decide the eventual state of the ledger



#### Examples:

* Bitcoin &#x20;
* Ethereum&#x20;



## Private Blockchains&#x20;

> **Private Blockchain**:
>
> * open only to a consortium or group of individuals or organizations who have decided to share the ledger among themselves
> * also called as **`consortium blockchains`**, or **`enterprise blockchains`**



In private blockchains, **tokens** are **not** really **required**,&#x20;

— but they can be used as a **means of transferring value** or representing some real-world **assets**.



#### Examples:

* Hyperledger Fabric &#x20;
* Quorum

{% hint style="info" %}
Both **Hyperledger Fabric and Quorum** blockchains can also be in **public mode** if required,&#x20;

but their primary purpose is to provide a private blockchain.
{% endhint %}



## Semi-private Blockchains&#x20;

> **Semi-private Blockchain**:
>
> * part of the blockchain is private and part of it is public; a  hybrid model
> * the private part is controlled by a group of individuals&#x20;
> * the public part is open for participation by anyone
> * “**semi-decentralized**” model; where it is controlled by a single entity but still allows multiple users to join the network by following appropriate procedures

{% hint style="info" %}
Semi-private Blockchains are still a concept.

No real-world proofs of concept have yet been developed.
{% endhint %}



## Permissioned Ledger&#x20;

> **Permissioned Ledger**:
>
> a blockchain where **participants** of the network are already **known and trusted**
>
> * do not need to use a distributed consensus mechanism
> * instead, an **agreement protocol** is used to maintain a shared version of the truth about the state of the records on the blockchain
> * for verification of transactions on the chain, all **verifiers** are already **preselected** by a central authority and, typically, there is no need for a mining mechanism



{% hint style="success" %}
There is **no requirement** for a permissioned blockchain **to be private**,&#x20;

╰**---**➤ as it can be a **public blockchain but with regulated access control**.
{% endhint %}

e.g:  Bitcoin can become a permissioned ledger if an `access control layer` is introduced on top of it that verifies the identity of a user and then allows access to the blockchain.



## Fully Private and Proprietary Blockchains&#x20;

{% hint style="info" %}
There is **no mainstream application** of these types of blockchains,&#x20;

as they **deviate from** the core concept of **decentralisation** in blockchain technology.&#x20;
{% endhint %}

However, in specific private settings within an organization, there could be a need to share data and provide some level of guarantee of the authenticity of the data.&#x20;

* E.g: To allow collaboration and the sharing of data between various government departments.&#x20;
  * no complex consensus mechanism is required, apart from a simple SMR with known central validators&#x20;



## Tokenized Blockchains&#x20;

> **Tokenized Blockchain**:
>
> standard blockchains that **generate cryptocurrency** as a result of a consensus process via mining or initial distribution



Examples:

* Bitcoin &#x20;
* Ethereum&#x20;



## Tokenless Blockchains&#x20;

> **Tokenless Blockchain**:
>
> designed in such a way that they **do not have the basic unit** for the transfer of value
>
> — **not used** for a common blockchain application of **value transfer or cryptocurrency**
>
> **— no native (default) cryptocurrency** in tokenless blockchains
>
> * If required tokens can be built on these chains as an application implemented using smart contracts
>
> — can be thought of as a **shared distributed ledger** used for **storing and sharing data** between the participants



📌 Valuable in situations where there is no need to transfer value between nodes and only the sharing of data among various trusted parties is required.&#x20;



📌 similar to fully private blockchains

* the only **difference** is that the use of **tokens** is **not required**.&#x20;



📌 Most of the **permissioned blockchains** can be seen as an example of tokenless blockchains

* E.g: Hyperledger Fabric, Quorum

#### Benefits&#x20;

* immutability
* tamper-proofing
* security&#x20;
* consensus-driven updates





