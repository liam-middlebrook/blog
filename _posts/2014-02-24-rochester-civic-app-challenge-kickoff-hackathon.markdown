---
layout: post
title: Rochester Civic App Challenge Kickoff Hackathon
tags: [HFOSS, Community]
---
<p>This past weekend myself, along with my friends Eric and Braxton participated in the <a href="http://attroc.hackupstate.com">Rochester Civic App Challenge</a> Kickoff Hackathon. This kickoff was hosted by <a href="http://magic.rit.edu">RIT's MAGIC Center</a> and lasted from 6PM Friday Jan 21st to 6PM Saturday Jan 22nd.</p>
<p>Braxton, Eric, and I created <a href="http://gearchicken.com/civicapp">CityWatch</a> a browser based application that pinpoints the locations of 911 calls onto a map.  Our app received second place in the kickoff hackathon for new civic apps.</p>
<p><span style="text-decoration: underline;">One interesting thing</span> that we discovered during the hackathon was a bug (or feature!) in the API we were using to receive 911 call data. We had noticed that some points were appearing outside of Monroe county. After looking further into the issue we discovered a few datapoints in England. To be exact those points were from Brighton, England. I'm fairly sure that the scraper for the API that we used just looked for datapoints in towns that matched the names of towns in Monroe county.</p>
<p>For the rest of the challenge we plan to add filtering options so users will be able to view specific types of 911 calls (such as Ambulance, Fire, or Police). As well as expanding our dataset to receive 911 information from outside of Monroe County, NY.</p>
<p>&nbsp;</p>
