---
layout: post
title: "Reading My Own Code: Vim Colorschemes"
tags: [Community]
---

Today I finally decided that it would be a good idea to be able to read
what I write. I've been experimenting back and forth with different Vim
colorschemes and terminal color settings for the past few months. I finally
have found what I consider the most *pleasing* color scheme.

Vim Colorscheme: sjl/badwolf
Terminal Colorscheme: (Grey on Black) (Solarized)

I also enjoy being able to read through my terminal (I have a transparency
setting). I noticed that by default badwolf didn't work for my transparent
background in Vim. I fixed that by adding the following two commands to my
.vimrc after I enable the colorscheme.

```
hi Normal ctermbg=none
hi NonText ctermbg=none
```
