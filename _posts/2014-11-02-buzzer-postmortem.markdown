---
layout: post
title: "Buzzer As A Service: Postmortem"
tags: [ADVFOSS, Community]
---
For my second project in [AdvFOSS](http://advfoss-ritigm.rhcloud.com) I decided
to work on [Buzzer as a Service](https://github.com/liam-middlebrook/buzzer-as-a-service)

Buzzer as a Service is hosted on [PyPi](https://pypi.python.org/pypi/buzzer_as_a_service/)
and currently scans a specified IRC channel for messages that contain the string 'buzzer'
or any string with a 'b' followed by at least one 'z' and ending with a 't'.

There is also extension support for Buzzer as a Service where users just
make a package that lives within the `buzzer_as_a_service` package.
All plugins are automatically loaded and executed upon a buzzer call.
I have already implemented one sample plugin
[buzzer_as_a_service.message](https://pypi.python.org/pypi/buzzer_as_a_service.message/).
This plugin just displays the message, user, and channel that was buzzed.
