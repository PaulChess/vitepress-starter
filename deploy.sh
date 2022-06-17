#!/usr/bin/env sh

# abort on erros
set -e

# build
ni
nr docs:build

# navigate into the build
cd docs/.vitepress/dist

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:PaulChess/personal-website.git main:gh-pages

cd -