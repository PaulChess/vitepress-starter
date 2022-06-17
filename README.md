# vitepress-starter
描述: vitepress 模板

## About Build

### GitHub Pages
1. 检查 `docs/.vitepress/config.js` 中的 `base` 选项:
- 如果是打算部署在 `https://<USERNAME>.github.io/`，可以不配置 `base`，因为它默认就是 `/`
- 如果是打算部署在某个仓库下，如: `https://<USERNAME>.github.io/<REPO>/`，需要把 `base` 设置为 `/<REPO>/`

2. 在项目根目录下创建 `deploy.sh`，填写如下内容(根据项目实际信息适当修改):
```shell
#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run docs:build

# navigate into the build output directory
cd docs/.vitepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages

cd -
```