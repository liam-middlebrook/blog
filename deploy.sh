#!/bin/bash
gitmsg=$(git log -1 --pretty=%B)
echo ${gitmsg}
jekyll build -d production/
git pull
git add *
git commit -am "Publishing: ${gitmsg}"
git push

