---
layout: post
title: "24 Days of Pull Requests | BreakOuttaHere"
tags: [ADVFOSS, Community, 24Pulls]
---
As part of my contribution to the 24 days of Pull Requests. I decided
to fix a potential bug in [golddiamonds/BreakOuttaHere](https://github.com/golddiamonds/BreakOuttaHere).
I fixed an issue where they were going through the game loop by executing
a `sleep` command with an arbitrary literal number. This is an issue
because not all computers run at the same CPU clock speed, leaving
users with slower computers at an advantage.

Here's a link to the pull request I made for BreakOuttaHere
[BreakOuttaHere](https://github.com/golddiamonds/BreakOuttaHere/pull/2)
