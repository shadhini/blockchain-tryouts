---
description: thought experiment proposed by Lamport in 1982 [2]
icon: seal-question
---

# The Byzantine Generals Problem

{% embed url="https://www.microsoft.com/en-us/research/publication/byzantine-generals-problem/" %}

A group of army generals who lead different parts of the Byzantine army is planning to _**attack or retreat**_ from a city.

The only way of communicating with them is a via a _**messenger**_.

They need to agree to strike at the same time to win.

The issue is that one or more generals might be _**traitors**_ who could send a misleading message. Moreover, the messenger could be captured by the city, resulting in _**no message delivery**_.

Therefore, there is a need for a _**viable mechanism**_ that allows agreement among the generals, even in the presence of the _treacherous ones, and message loss_, so that the attack can still take place at the same time.



Analogy for distributed systems:

* generals -> honest nodes
* traitors -> Byzantine nodes (i.e. nodes with arbitrary behaviour)
* messenger -> channel of communication with the generals/nodes
* captured messenger -> delayed or lost message
