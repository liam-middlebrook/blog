---
layout: post
title: C++11 Support with Travis-CI using g++
tags: [MINX]
---
Today I was working on adding Travis-CI support to my project 
[MINX](http://libminx.org) and I came across an issue that had 
happened to several people, but no single source had the solution. 
I compile MINX with g++ (just because that's what I'm used to). 
A few things inside of MINX require C++11 so I'd normally just add 
a * **-std=c++11** * argument in my makefile.

To my surprise the virtual machines that Travis-CI uses have g++ 4.6 
installed, this is an issue for anyone who wants track the build 
status of a C++11 program with Travis. After a few minutes of 
searching I came across a link that provided me with an Ubuntu tools 
PPA that contained some newer versions of g++. Below I've included a 
few lines that will allow you to use * **-std=c++11** * with g++ 
for your .travis.yml file:

```yaml
language: cpp
before_install:
# We need this line to have g++4.8 available in apt
  - sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
  - sudo apt-get update -qq
install:
  - sudo apt-get install -qq gcc-4.8 g++-4.8 
# We want to compile with g++ 4.8 when rather than the default g++
  - sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 90
```
