---
layout: post
title: "OSI Licenses Full: A FOSS Project Bootstrapping Tool"
tags: [ADVFOSS, Community]
---

This weekend I started to work on a project for my ADVFOSS class.
As usual when I started the project I wanted to choose a license;
Normally I would just use the GitHub online interface to create
a new repository for me that has run `git init` and added LICENSE and README
files. Instead I decided to pull down a nice markdown formatted version of
my license of choice, I got that file from [timoxley/osi-licenses-full](https://github.com/timoxley/osi-licenses-full).

I really like using osi-licenses-full when I want to pull down the texts of
various FOSS licenses. The only issue is that this requires an active internet
connection and I always manage to forget the URL of the repository. I thought
about how much faster it would be if all I needed to create a license file for
a new project was to run a command and I decided that I was going to fork
osi-licenses-full into a Python terminal script.

My version of osi-licenses-full is hosted on [PyPi](https://pypi.python.org/pypi/osi_licenses_full)
and [GitHub](https://github.com/liam-middlebrook/osi-licenses-full). It is
downloadable via the command `pip install osi_licenses_full`
