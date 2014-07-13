---
layout: post
status: publish
published: true
title: RocPy - Using collections.defaultdict as a Tree
author:
  display_name: liammiddlebrook
  login: liammiddlebrook
  email: liammiddlebrook@gmail.com
  url: ''
author_login: liammiddlebrook
author_email: liammiddlebrook@gmail.com
wordpress_id: 73
wordpress_url: http://gearchicken.com/wordpress/?p=73
date: !binary |-
  MjAxNC0wNC0xNCAwMTo0MDo1OCAtMDYwMA==
date_gmt: !binary |-
  MjAxNC0wNC0xNCAwMTo0MDo1OCAtMDYwMA==
categories:
- Uncategorized
tags: []
comments: []
---
Last month on Tuesday the 18th, students from both my HFOSS class as well as students 
from the Advanced FOSS class were supposed to go to March's RocPy meeting. When I had 
arrived with my car, ready to carpool some of the students over I was the only person 
who had brought their car. After waiting for about 10 minutes nobody else had arrived 
with a vehicle that was suitable for driving others in. After making a few calls a few
people gave up and decided not to go to RocPy. The remainder of us piled into my car 
and made the long (15 minute) journey to the University of Rochester.
The remainder of this blogpost will be in code below.

```python

#First off we're going to declare our new tree
import collections
def tree(): return collections.defaultdict(tree)

#Now let's make a new tree object
#I'm going to make it themed like a skill tree in a videogame
talents = tree()

#Lets make the root node of our tree Magic, because I'm making a Magic skillset tree
talents["magic"]

#Now I'll add the subtalents of magic
talents["magic"]["fireball"]
talents["magic"]["magic arrow"]

#And their subtalents
talents["magic"]["fireball"]["crazy big fireball"]
talents["magic"]["fireball"]["100 tiny fireballs"]
talents["magic"]["magic arrow"]["ice arrow"]
talents["magic"]["magic arrow"]["exploding arrow"]

#Now that we have our skills defined, lets give them some meaning.
#I'm going to mark each skill that the player "knows" with a value of 1
#all "unknown" skills will get a value of 0

#NOTE: This only will work with Leaf Nodes
talents["magic"]["fireball"]["crazy big fireball"] = 1
talents["magic"]["fireball"]["100 tiny fireballs"] = 0
talents["magic"]["magic arrow"]["ice arrow"] = 0
talents["magic"]["magic arrow"]["exploding arrow"] = 0

#And now if you were to run
print talents

#You should get the following!
#defaultdict(, {'magic': defaultdict(, {'fireball': defaultdict(, {'100 tiny fireballs': 0, 'crazy big fireball': 1}), 'magic arrow': defaultdict(, {'exploding arrow': 0, 'ice arrow': 0})})})

#Which Formatted out nicely* (in a more tree friendly format) will look like
#defaultdict(, {'magic': defaultdict(,
#                   {'fireball': defaultdict(,
#                       {'100 tiny fireballs': 0
#                       , 'crazy big fireball': 1}),
#                   'magic arrow': defaultdict(,
#                       {'exploding arrow': 0,
#                       'ice arrow': 0})
#               })})
```
