#!/bin/bash
gitmsg=$(git log -1 --pretty=%B)
echo ${gitmsg}
git pull
git push
jekyll build -d ./production
git checkout gh-pages
cp -R ./production/* ./
rm -rf ./production
git add *
git commit -am "Publishing: ${gitmsg}"
git push origin gh-pages
git checkout master
