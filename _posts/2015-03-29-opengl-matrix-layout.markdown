---
layout: post
title: "OpenGL Matrix Memory Layout"
tags: [Community]
---

There's a large confusion in the Graphics Programming Community about the
layout of Matrices in memory using OpenGL.

One of the most common mistakes is that programmers think that OpenGL uses
Column-Major order matrices. It's easy to think that this is the case because
that's what [the majority of results on Google says](https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=opengl%20matrix%20major%20order).
Sadly this isn't actually the case, OpenGL doesn't have a preference to which
layout your matrix consists under. All OpenGL cares about is that you follow
the same memory layout that the API understands (and with the
[transform parameter](http://docs.gl/gl4/glUniform#parameters) that doesn't
really even matter anymore).

![Matrix Memory Layout in OpenGL](http://i.imgur.com/WJw9mbK.jpg)
An image showing how an OpenGL Matrix is layed-out in contiguous memory.
