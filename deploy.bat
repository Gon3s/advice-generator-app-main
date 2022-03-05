@echo off

npm run build
cd dist
git init
git add -A
git commit -m deploy
git push -f git@github.com:Gon3s/advice-generator-app-main.git master:gh-pages
cd -