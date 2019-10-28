# www
git init //因為dist資料夾預設是被ignore的，因此在進入dist資料夾後初始化git
git add -A
git commit -m 'deploy'
# 部署到 https://github.com/chou0728/eric-project.git 分支為 gh-pages
git push -f https://github.com/cynthiarchang123/www.git master:gh-pages

www
https://cynthiarchang123.github.io/www/
