---
description: extension of CAP theorem by Daniel J. Abadi [3]
icon: badge-check
---

# PACELC Theorem

> **`Tradeoffs` between&#x20;**_**latency**_**&#x20;and&#x20;**_**consistency**_**&#x20;always exist in `replicated systems`**,&#x20;
>
> whereas CAP is only applicable when there are network partitions.



* This means that even if no network partition occur, under normal operation the tradeoff between consistency and latency exists.
  * e.g: Some databases may choose to give up consistency for lower latency and some databases could pay the availability and latency costs to achieve consistency.

