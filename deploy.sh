#!/usr/bin/env sh

# 当发生错误时中止脚本
#set -e

# 构建
#npm run build

# cd 到构建输出的目录下 
#cd dist

# 部署到自定义域域名
# echo 'www.example.com' > CNAME

#git init
#git add -A
#git commit -m 'deploy'

# 部署到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 部署到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

#cd -
##########################################
#//deploy.sh
#!/usr/bin/env sh
# 當發生錯誤時終止腳本運行
set -e
# 打包
npm run build
# 移動至到打包後的dist目錄 
cd dist
git init #因為dist資料夾預設是被ignore的，因此在進入dist資料夾後初始化git
git add -A
git commit -m 'deploy'
# 部署到 https://github.com/chou0728/eric-project.git 分支為 gh-pages
git push -f https://github.com/cynthiarchang123/www.git master:gh-pages
#將dist資料夾中的內容推送至遠端eric-project的gh-pages分支中，並強制無條件將舊有的內容取代成目前的內容（指令 git push -f)
cd -