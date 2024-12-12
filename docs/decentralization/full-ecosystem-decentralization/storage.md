---
icon: database
---

# Storage

{% hint style="success" %}
**Primary requirements:**



1. **High availability**: data is available when required
2. **Link stability:** network links are always accessible
{% endhint %}



## Option 1: Storing Data Directly on a Blockchain

By storing data directly on the blockchain, the system can achieve decentralization.



Disadvantage:&#x20;

* Blockchain is not designed for large data storage
  * it can only handle simple transactions and arbitrary data, not large blobs like traditional database systems



## Option 2: Using Distributed Hash Tables (DHTs) for Data Storage

DHTs &#x20;

* initially utilized in peer-to-peer file-sharing software like `BitTorrent`, `Napster`, `Kazaa`, and `Gnutella`&#x20;
* popularity was fueled by projects like `CAN`, `Chord`, `Pastry`, and `Tapestry`&#x20;





### `BitTorrent` | `Napster` | `Kazaa` | `Gnutella` &#x20;

* `BitTorrent`: The most scalable and fastest network
* **Issue with BitTorrent and Other**s:
  * There's no incentive for users to keep the files indefinitely
  * Users typically don't permanently store files, and data retrieval from left nodes requires nodes to rejoin the network to restore files if required by someone.





### **Inter-Planetary File System** (`IPFS`)&#x20;

* has both properties; `High Availability` | `Link Stability`
* **vision**: provide a decentralized World Wide Web by replacing the HTTP protocol
* **storage** functionality — by `Kademlia DHT`&#x20;
* **searching** functionality — by `Merkle Directed Acyclic Graphs` (DAGs)  &#x20;
* **incentive mechanism** for storing data -> based on `Filecoin` protocol
  * pays incentives to nodes that store data using the `Bitswap` mechanism;&#x20;
  * `Bitswap` mechanism: enables nodes to maintain a ledger of bytes sent or received in a one-to-one relationship
* `Git`-based version control mechanism offers **structure** and **control over** **data versioning**



## Other alternatives for data storage

* `Ethereum Swarm`
  * Ethereum has its own decentralized and distributed ecosystem&#x20;
  * storage - `Swarm`
  * Communication - `Whisper`
* `Storj`&#x20;
* `MaidSafe`
  * aims to provide a decentralized World Wide Web
* `BigChainDB`
  * storage layer decentralization project&#x20;
  * aims to provide a scalable, fast, and linearly scalable decentralized database&#x20;
  *   complements (works in harmony with other systems, enhancing their capabilities without replacing them) decentralized processing platforms and filesystems such as Ethereum and IPFS

