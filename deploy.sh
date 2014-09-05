#!/bin/bash
gitmsg=$(git log -1 --pretty=%B)
echo ${gitmsg}
git pull
jekyll build -d ./
git checkout production
git add *
git commit -am "Publishing: ${gitmsg}"

git push

