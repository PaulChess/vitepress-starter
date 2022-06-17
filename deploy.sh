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

git config --global init.defaultBranch main
git push -f https://github.com/vuejs/vitepress.git main:gh-pages

cd -