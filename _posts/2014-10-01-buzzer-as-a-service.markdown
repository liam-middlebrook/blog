---
layout: post
title: "Buzzer as a Service Project Proposal"
tags: [ADVFOSS, Community]
---
# Buzzer as a Service
Create an IRC bot that will play an audible buzzer sound whenever the "mood" of
a channel becomes too negative. The "mood" of a channel will be tracked under
a few different conditions, some example ideas follow below:

* The use of the string `no` in any form.

* The use of the `<buzzer>` tag.

In addition to tracking certain conditions I plan to have Buzzer as a Service
also allow extensions. A possible extension might be a hardware buzzer that
changes the state of one of the Pi's GPIO port's to HIGH when triggered.

## Requirements
* A Raspberry Pi
* A working Internet connection

## Team Members
I plan to complete this as a solo project.

## Upstream Mentors
[@ryansb](https://github.com/ryansb)

## Project Milestones

* October 7th, 2014 - Have buzzer sound playing using PyAudio

* October 9th, 2014 - Have buzzer activating through single word detection

* October 14th, 2014 - Write extension framework

* October 16th, 2014 - Write Mystery Extension

## License
[MIT](https://github.com/timoxley/osi-licenses-full/blob/master/licenses/MIT.md)
