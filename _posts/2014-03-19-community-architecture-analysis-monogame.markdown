---
layout: post
title: ! 'Community Architecture Analysis: MonoGame'
tags: [XNA, Game Development, HFOSS, Community]
---
<h3><b>What we did:</b></h3>
<p>My team and I researched MonoGame primarily through its Github page, main website, and Google.  Before the project, I had crawled through the MonoGame source and interacted with its developers on Github.  We attempted to augment our own research with <a href="https://github.com/tomheon/git_by_a_bus">git_by_a_bus</a>, but the way the git_by_a_bus was written caused it to keep eating up the machine's memory.</p>
<h3><b>Some context and history: </b></h3>
<p>"<b>From the <a href="http://www.monogame.net/">website</a>:</b>  MonoGame is an Open Source implementation of the Microsoft XNA 4 Framework. Our goal is to allow XNA developers on Xbox 360, Windows &amp; Windows Phone to port their games to the iOS, Android, Mac OS X, Linux and Windows 8 Metro.  PlayStation Mobile, Raspberry PI, and PlayStation 4 platforms are currently in progress.</p>
<p>In 2009 José Antonio Leal de Farias, an active member of the XNA community, started an open source project called XNA Touch with the goal of porting simple 2D XNA games to mobile devices.  He started from Bill Reiss’s SilverSprite and some bits of Mono.XNA and in December 2009 the first release which only supported iPhone was posted on Codeplex.<br />
...<br />
In March 2011 the project was renamed MonoGame and was moved to GitHub.  That same year support for Android, Mac, Linux, and OpenGL on Windows appeared.  Dominique Louis who joined the project in 2009 took over as the full time project lead."</p>
<h3><b>What is the community?</b></h3>
<p>Monogame has had 8 main developers over the course of its entire life.  Currently there are 4 : Steve Williams, Tom Spilman, Andrea Magnorksy, and Jacob Anderson, who also approve patches.  Over the course of the project there have been 138 contributors, and 6,089 commits.  Tom Spilman acts as the lead developer for the project, and is probably the best person to contact if you have additional questions.</p>
<p>Monogame has a large community of developers behind it, which has steadily been growing as more and more indie developers use it and give credence to the project's credibility and stability.</p>
<h3><b>Would the project survive the raptor test or if 20% of contributers were killed?</b></h3>
<p>My assumption is that because monogame is starting to get essential, and because the people using it are in a position to also write code for it, it would get picked up again.  While killing a large portion of the developers would be a huge detriment to the project, it would probably recover. One of monogame's strengths is that its userbase is often involved in development - this means that there are a lot of people with stake in the project, and an ability to code and improve upon it.</p>
<h3><b>Monogame's Documentation/ Bug Reporting/ Quickstarts to contributing: </b></h3>
<p>Monogame has a large amount of documentation by pure virtue of being able to use most of the old XNA documentation.  It's very easy to start using.</p>
<p>The source code itself is also well documented; there's a good quickstart guide and the code is well-commented.  Outside of that though, you'll be somewhat on your own as to finding what bugs/features to work on.</p>
<p>Bugs/issues/milestones are managed through GitHub's issue tracker, which is managed by the lead developers.  This is also where most of the conversations take place - it's here you'll find talks about release schedules, future changes and merges, and so on.  Monogame has no mailing list and little activity on any IRC channel.</p>
<h3><b>Is contributing to Monogame right for you?</b></h3>
<p>It depends on what you want.  Monogame isn't terrifically helpful getting you set up or helping you through problems.  That may be something you like (independence, less scheduled accountability) or it may be a problem for you (less help when you run into problems, harder to talk about specific issues, harder to get people to work on things)</p>
<h3><b>Any conclusions?</b></h3>
<ul>
<li>There are a small number of people in charge, but those people are taking input from a large number of independent contrubuters, each with a fair amount of power over the direction.  Merging in large amounts of code requires communication and getting to know the community.</li>
<li>There is a large sense of independence in the project.  The largest amounts of development are being done in forks by other people, and then after significant amounts of development (getting a game released, etc...) then merging it back in.  There are positives and negatives to this approach.</li>
<li>The community doesn't do a great job holding your hand, but there's room to experiment. There's a strong DUI ethos, at least that we saw.</li>
</ul>
<h3><b>Callaway Coefficient of Fail : </b></h3>
<p>For what I had seen from FOSS development in the past the standards of the Callaway Coefficient of Fail were no surprise to me. The FOSS community isn't all the sunshine and rainbows that my professor may paint it out to be; a lot of the FOSS community is highly critical of Windows and proprietary software developers.<br />
-------------------------------------------<br />
Size: + 0<br />
Source control: + 0<br />
Building from Source: + 50<br />
Bundling: + 0<br />
Libraries: + 20<br />
System install: + 20<br />
Code oddities : + 20<br />
Communication : + 15<br />
Releases : + 0<br />
History : + 10<br />
Licensing : + 10<br />
------------------------------------------<br />
145 - So much fail, your code should have its own reality TV show.</p>
<h3><b>Our assessment: </b></h3>
<p>Monogame is here to stay.  The community is still growing and the project is still maturing, but nothing's going to get rid of it anytime soon.  It is, by all sane measures, a highly successful project.</p>
