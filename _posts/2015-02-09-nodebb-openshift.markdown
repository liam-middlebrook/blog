---
layout: post
title: Deploying NodeBB To OpenShift
tags: [Community]
---
A few weeks ago one of my friends asked me about the possibility of setting
up online forum software for a community that he's part of. He also had
mentioned that he wanted to avoid using any Forum Software that was written
in PHP. We also wanted to make sure they we had a free hosting solution, so
we went with [OpenShift](http://openshift.com) and [NodeBB](http://nodebb.org).

I found the NodeBB instructions for deploying to OpenShift [here](https://docs.nodebb.org/en/latest/installing/cloud/openshift.html).
After looking through this guide and attempting it a few times I was having
issues with getting NodeBB to publicly run. I found the issue was related
to NodeBB's Express instance not binding to the proper host. After looking
through some of the source I found that I was missing `bind_address` in my
config file, so I submitted a [pull request](https://github.com/NodeBB/nodebb-english/pull/27).
