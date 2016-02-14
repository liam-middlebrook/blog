---
layout: post
title: "Writing a Minimal Content Distribution Network"
tags: [Community]
---

Content Distribution Networks are commonly used on large websites to help
balance the load across geographical areas in the hopes that content can be
delivered to users with as little latency as possible. Another great feature of
CDNs is checking file integrity. When accessing data from a CDN you can specify
a list of hashes to check the downloaded file against. This way you can ensure
that you are not succeptable to a man in the middle attack and about to run a
malicious javascript file.

The software for my Content Delivery Network (since it does not support
distributed downloading) is located on
[GitHub](https://github.com/BrandonHudson/CSHAssets).
