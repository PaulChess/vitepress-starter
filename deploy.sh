#!/usr/bin/env sh

# abort on erros
set -e

# build
pnpm install
pnpm run docs:build

# navigate into the build
cd docs/.vitepress/dist

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:PaulChess/vitepress-starter.git main:gh-pages

cd -