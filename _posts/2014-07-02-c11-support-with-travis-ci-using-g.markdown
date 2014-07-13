---
layout: post
status: publish
published: true
title: C++11 Support with Travis-CI using g++
author:
  display_name: liammiddlebrook
  login: liammiddlebrook
  email: liammiddlebrook@gmail.com
  url: ''
author_login: liammiddlebrook
author_email: liammiddlebrook@gmail.com
wordpress_id: 105
wordpress_url: http://gearchicken.com/wordpress/?p=105
date: !binary |-
  MjAxNC0wNy0wMiAwMDo0Mzo1NSAtMDYwMA==
date_gmt: !binary |-
  MjAxNC0wNy0wMiAwMDo0Mzo1NSAtMDYwMA==
categories:
- MINX
tags: []
comments: []
---
<p>Today I was working on adding Travis-CI support to my project <a href="http://libminx.org">MINX</a> and I came across an issue that had happened to several people, but no single source had the solution. I compile MINX with g++ (just because that's what I'm used to). A few things inside of MINX require C++11 so I'd normally just add a <em> <strong>-std=c++11</strong> </em> argument in my makefile.</p>
<p>To my surprise the virtual machines that Travis-CI uses have g++ 4.6 installed, this is an issue for anyone who wants track the build status of a C++11 program with Travis. After a few minutes of searching I came across a link that provided me with an Ubuntu tools PPA that contained some newer versions of g++. Below I've included a few lines that will allow you to use <em> <strong>-std=c++11</strong> </em> with g++ for your .travis.yml file: [snippet id="9"]</p>
