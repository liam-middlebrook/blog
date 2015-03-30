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

Personally when I see how this is layed out I start to imagine the data in
Row-Major Order. Because when I read things my eyes follow a very uniform
pattern, left to right and then down a row when I hit the last column. As a
person who has become (semi-)literate in English I can comfortably say that
my brain has become acustomed to parsing data in Row-Major Order.

Sadly OpenGL really pushes users to use Column-Major Order. This is evident by
the fact that section 4.1.6 of the [GLSL Specification](https://www.opengl.org/registry/doc/GLSLangSpec.4.40.pdf)
states the following.

    Initialization of matrix values is done with constructors (described in section 5.4 “Constructors” ) in
    column-major order

To me personally thinking that the matrices are layed out in Column-Major
Order is un-natural. Here's how the GLSL Specification looks at the matrices
that are created.

```
|0,  4,  8,  12|
|1,  5,  9,  13|
|2,  6,  10, 14|
|3,  7,  11, 15|
```
Weird Column-Major Memory Layout (Row-Major in Disguise)

There's not really a right answer to what format to use. As stated above I
prefer to use Row-Major Ordering for my Matrices. In the end use whatever is
more intuitive to you, but please make sure to document how things are
layed out in memory.
