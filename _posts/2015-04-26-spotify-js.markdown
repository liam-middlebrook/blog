---
layout: post
title: "Integrating Spotify With Javascript"
tags: [Community]
---

In my Research Studio class I'm currently working on a project that creates
audio visualizations using Javascript and [three.js](http://threejs.org/). So
far we've been using APIs like [sonicAPI](http://www.sonicapi.com/) in order
to process the data from local sound files. We've also experimented with using
the HTML5 WebAudio API, but either way the user has the duty to provide their
own music for visualization.

Placing the burden of having a full-featured music library on the user is not
something that our professor was okay with. Instead he recommended that we
look into different music streaming APIs in order to provide a more full
experience for the user. The following services and their APIs were explored.

* [Grooveshark](http://grooveshark.com)

* [Spotify](http://spotify.com)

I personally looked heavily into the Spotify API.

Spotify offers a variety of API endpoints for developers who decide to
use their service. The first one that I looked into was the Spotify Native API
or [libspotify](https://developer.spotify.com/technologies/libspotify/) as
it's more commonly known.

While exploring the features of libspotify I noticed a few key elements that
increased its difficulty of use.

* A Native Secret Key is Required

* All music data is streamed in 16 bit Little Endian 4.41kHz (Uncompressed CD)

* libspotify bindings are in C

The first thing I did was look for NodeJS wrappers for the libspotify C
library. I was lucky enough to find two different libraries that wrapped
libspotify for use with NodeJS. [FrontierPsychiatrist/node-spotify](https://github.com/FrontierPsychiatrist/node-spotify),
and [Floby/node-libspotify](https://github.com/Floby/node-libspotify). Sadly
after getting both of these libraries to work beautifully on my Linux machine
I learned that neither of them would support Windows.

For about a day I looked into compiling versions of these libraries to run on
Windows, and arrived at the conclusion that I usually run into while developing
for Windows: If something needs to use external libraries, it won't be fun to
compile on Windows.

Luckily I found a NodeJS Spotify Wrapper that uses the [Spotify Web API](https://developer.spotify.com/web-api/).
After about 10 minutes of mucking around trying to get a nice example* setup.

\* An example that wouldn't require me typing my username and password into
a plaintext file.

This wrapper works wonderfully and retrieves the songs in MP3 format, which
makes for easy integration with SonicAPI and the WebAudio API.
