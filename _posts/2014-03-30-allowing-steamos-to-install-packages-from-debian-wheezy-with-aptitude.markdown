---
layout: post
title: Allowing SteamOS to Install Packages From Debian Wheezy With Aptitude
tags: [Game Development, HFOSS, Community, MINX]
---
<h2>The Meeting</h2>
<p>Last Wednesday I had a meeting with Andy Phelps the director of <a href="http://magic.rit.edu">RIT's MAGIC center</a>. I was requesting permission to use the MAGIC center's labs for developing MINX for SteamOS. Below I have included a paraphrased transcription of our meeting:</p>
<blockquote><p>Me: "I was wondering if I would be able to use the MAGIC center's Steambox to develop my custom game framework?"</p>
<p>Andy: "Yes."</p></blockquote>
<h2>The Quest</h2>
<p>Later that day I went into the MAGIC Lab to use the Steam Machine. When I logged into a virtual terminal I tried to install Git so I would be able to clone my repository for <a href="http://libminx.org">MINX</a>. That's when I found out that a source list containing Git was not included in the default Alchemist /etc/apt/sources.list file.  I thought to myself  *If Git is missing what else might be missing?*</p>
<p>Two nights ago <a href="https://github.com/brpylko">@brpylko</a> and I went back into the MAGIC lab determined to fix the sources.list file to allow SteamOS to also download Debian packages if they were not already given from the Alchemist package list. We had found two different tutorials, at first one that was generic to any environment using the Advanced Packaging Tool (the first link below.) The second tutorial we had found was on the Steam Community page, while it was specific to SteamOS it still had a few errors that caused the sources to not download properly.</p>
<p><a href="http://jaqque.sbih.org/kplug/apt-pinning.html">http://jaqque.sbih.org/kplug/apt-pinning.html</a></p>
<p><a href="http://steamcommunity.com/groups/steamuniverse/discussions/1/648814396114274132/">http://steamcommunity.com/groups/steamuniverse/discussions/1/648814396114274132/</a></p>
<h2>The Solution</h2>
<p>For this tutorial I'm going to assume that you already have access to a terminal on your SteamBox that has sudo access.</p>
<p>First off open up the terminal and change directory to "/etc/apt/" this can be done by the command</p>
<blockquote><p>cd /etc/apt/</p></blockquote>
<p>Second off we will need to edit the sources.list file. Nano is a simple text editor in terminal with a shallow learning curve, so I'll be using that for this tutorial. This can be done with the commnad</p>
<blockquote><p>sudo nano sources.list</p></blockquote>
<p>Once you have opened up sources.list go to the bottom of the file in add in your debian mirror of choice. I'm going to put the default mirror for simplicity. The two lines that you add to your sources.list file should look similar to the following</p>
<blockquote><p>deb <a href="http://ftp.us.debian.org/debian/" rel="nofollow">ftp.us.debian.org/debian/</a> wheezy main contrib non-free</p>
<p>deb-src <a href="http://ftp.us.debian.org/debian/" rel="nofollow">ftp.us.debian.org/debian/</a> wheezy main contrib non-free</p></blockquote>
<p>After you have done that it's time to save and close the sources.list file.</p>
<p>Now we need to change our APT Preferences file. <strong>Please Note: </strong>Some users may not have an existing APT Preferences file. Either way you'll have to open/create an /etc/apt/preferences file. I'll be using the command</p>
<blockquote><p>sudo nano /etc/apt/preferences</p></blockquote>
<p>Once you have the file open we need to add the following lines to it</p>
<blockquote><p>Package: *</p>
<p>Pin: release l=SteamOS</p>
<p>Pin-Priority: 900</p>
<p>&nbsp;</p>
<p>Package: *</p>
<p>Pin: release l=Debian</p>
<p>Pin-Priority: 10</p></blockquote>
<p>What you typed above tells APT that it should prioritize downloading packages that are included in the SteamOS list, but also to download packages from the Debian package list.</p>
<p>To finalize your changes to the APT settings run the following command.</p>
<blockquote><p>sudo apt-get update</p></blockquote>
<p>Now you should be able to download packages from the Debian repository!</p>
<p>To test this out you should run the following two commands.</p>
<blockquote><p>sudo apt-get install cowsay fortune</p>
<p>fortune | cowsay</p></blockquote>
<p>If everything worked correctly you should have an ASCII cow draw in your terminal screen and tell you a random line from the fortunes list file!</p>
