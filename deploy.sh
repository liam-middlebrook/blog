#!/bin/bash
gitmsg=$(git log -1 --pretty=%B)
echo ${gitmsg}
git pull
git push
~/.gem/ruby/gems/jekyll-2.4.0/bin/jekyll build -d ./production
git checkout production
cp -R ./production/* ./
rm -rf ./production
git add *
git commit -am "Publishing: ${gitmsg}"
git push
git checkout master
