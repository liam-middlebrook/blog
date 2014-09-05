---
layout: post
title: Advanced FOSS Community Contrib 0: vogl
tags: [ADVFOSS, Community]
---
Community Contribution
======================

**My blog still isn't back up so I'm just going to post this here.**

My first community contribution was to Valve Software's OpenGL Debugging Suite known as [vogl](https://github.com/ValveSoftware/vogl/). I fixed an issue where Fedora users had their include files for `dwarf.h` inside of their `/usr/include/libdwarf/` directory, while the CMakeLists.txt file had been configured for Ubuntu/Debian users who have the header in the `/usr/include/` directory.

[My Pull Request](https://github.com/ValveSoftware/vogl/pull/165) adds in the `/usr/include/libdwarf/` directory for the CMake includes. Now Fedora users can build vogl!

