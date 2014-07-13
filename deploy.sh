#!/bin/bash
gitmsg=$(git log -1 --pretty=%B)
echo ${gitmsg}
jekyll build -d production/
cd production/
git add *
git commit -am "Publishing: ${gitmsg}"
git push
cd ..
git commit -am "Updated production submodule"
git push
