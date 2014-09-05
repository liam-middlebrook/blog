---
layout: post
title: Force Halt/Reboot on GNU/Linux Using /proc/
tags: [Community]
---
I'm starting the process of moving my things back
onto the RIT campus. Earlier tonight I decided
I was going to start preparing my server to be
transported, the first step logically being to turn it off.
Upon SSHing into the machine I was greeted with IO
errors every time I tried to execute a command 
that was located in `/sbin/`.

After a quick google I found this blog post
[Linux force reboot/shutdown]
(http://smshaker.wordpress.com/2009/03/02/linux-force-rebootshutdown)

Essentially to force a halt or reboot in the
Linux kernel without using any commands located
in `/sbin/` you have to echo values into the processor.

First off we need to enable `sysrq` (System Request)
which will allow us to send requests to the processor.
To do that just enter the following command 
```
echo 1 > /proc/sys/kernel/sysrq
```

* Forcing the computer to halt (shutdown)
  `echo o > /proc/sysrq-trigger`
* Forcing the computer to restart
  `echo b > /proc/sysrq-trigger`
