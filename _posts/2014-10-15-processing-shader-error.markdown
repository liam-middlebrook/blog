---
layout: post
title: "Processing Shader Compilation Error Fix"
tags: [ADVFOSS, Community]
---
Back in September I issued a [pull request](https://github.com/processing/processing/pull/2869)
to the [Processing](https://github.com/processing/processing) GitHub repository.
This pull request covered
[an issue with a confusing error message](https://github.com/processing/processing/issues/2593)
that caused unused PShader uniforms to be removed from the compiled shader. 
