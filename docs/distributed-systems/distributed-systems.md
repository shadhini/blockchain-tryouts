---
icon: chart-network
---

# Distributed Systems

> **Distributed System**
>
> A computing paradigm whereby `2 or more nodes` work with each other in a coordinated fashion to achieve a common outcome.
>
> * end users see it as a single logical platform
> * composed of&#x20;
>   * **processes** (`nodes`) and&#x20;
>   * **channels** (`communication channels`)
>   * where nodes communicate by **passing messages**.

e.g: Google's search engine

<figure><img src="../.gitbook/assets/distributed-system.png" alt="" width="516"><figcaption><p>Distributed System Design [1]</p></figcaption></figure>

N4: Byzantine node -> leads to possible data inconsistency.

L2: broken or a slow network link -> leads to a partition in the network

## Node

* an _individual_ player ( a computer)&#x20;
* all nodes can _send and receive messages_ to and from each other
* nodes can be&#x20;
  * **honest**
  * **faulty**
  * **malicious**
* have _memory_ and a _processor_

{% hint style="success" %}
A node that exhibits arbitrary behaviour is knows as a _**Byzantine node**_.

* Any unexpected behaviour by a node on the network, whether malicious or not, can be categorized as Byzantine.
{% endhint %}



## The Byzantine Generals Problem

{% content-ref url="the-byzantine-generals-problem.md" %}
[the-byzantine-generals-problem.md](the-byzantine-generals-problem.md)
{% endcontent-ref %}



## Key Challenges&#x20;

1. Coordination between nodes
2. Fault tolerance



## Active Research Areas

Even if a certain threshold is dictated by the consensus protocol, some of the nodes become faulty or network links break.

╰**---**➤ The distributed system should be able to tolerate this and continue to work to achieve the desired result — Active area of distributed system design research

