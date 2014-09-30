---
layout: post
title: "Arduino Based Dancepad Controller: Postmortem"
tags: [ADVFOSS, Community]
---
For my first project in [Advanced Foss](http://advfoss-ritigm.rhcloud.com) I
worked on interfacing physical buttons with my computer to simulate keyboard
presses. The source code for which can be found at [liam-middlebrook/dancepad]
(https://github.com/liam-middlebrook/dancepad)

I originally had started this project with the intention of refurbishing an
old Dance Dance Revolution metal pad that had been sitting in the RIT Game
Development lab for the past few years. The actually condition of the pad
is pretty abyismal, so I knew the physical refurbishing would take up most
of my time on the project.

Because of the state of the pad I decided to work on the software end for
what was due for my project milestone. I knew that once the project was over
I would be able to get enough free time to actually start working on the
hardware. During Software Freedom Day I worked on writing the software for this
hack. I decided to use Python for it's simplicity and ease of packaging. You
can find [DancePad-Keyboard](https://pypi.python.org/pypi/DancePad-Keyboard)
on PyPi.

Even though I wasn't able to get the full hardware working in time for the
project deadline I still was able to set up a temporary rig using my Arduino
and 4 tactical push-buttons. I've included a few images below that show off
the setup.

![](http://i.imgur.com/Bv49jbxl.jpg)
![](http://i.imgur.com/dLYAZtrl.jpg)
