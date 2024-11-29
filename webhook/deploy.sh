# !/bin/bash

# 记录日志
exec 1> >(tee -a /home/admin/webhook/deploy.log)
exec 2>&1
echo "开始部署: $(date)"

# 进入项目目录
cd /home/admin/webhook/myapp

# 设置git环境
export GIT_SSH_COMMAND="ssh -i /home/admin/.ssh/id_ed25519 -o StrictHostKeyChecking=no"


# 如果项目目录不存在，则克隆
if [ ! -d "/home/admin/webhook/myapp" ]; then
    echo "克隆仓库..."
    git clone git@github.com:Yzgfc/WebHook.git /home/admin/webhook/myapp
else
    # 如果目录存在，拉取更新
    cd /home/admin/webhook/myapp
    git fetch origin
    git reset --hard origin/main
fi

# 进入项目目录
cd /home/admin/webhook/myapp

# 保存当前的 HEAD
OLD_HEAD=$(git rev-parse HEAD)

# 重置任何本地更改
git reset --hard
git clean -fd

git pull origin main

# 获取新的 HEAD
NEW_HEAD=$(git rev-parse HEAD)

# 构建前端
echo "构建前端..."
cd web
npm install
npm run build
sudo chown -R www-data:www-data dist/
sudo chmod -R 777 dist/
cd ..

# 构建后端
echo "构建后端..."
cd sass
go mod init sass
go mod tidy
go build -o main_linux
sudo mv main_linux /home/admin/goproject/main_linux
cd ..

# 更新前端文件
sudo rm -rf /var/www/html/*
sudo cp -r web/dist/* /var/www/html/

# 重启后端服务
pkill -f "./main_linux" || true
cd /home/admin/goproject
nohup ./main_linux > nohup.out 2>&1 &

# 测试 Nginx 配置
sudo /usr/local/nginx/sbin/nginx -t

# 如果配置正确，重新加载 Nginx
if [ $? -eq 0 ]; then
    sudo /usr/local/nginx/sbin/nginx -s reload
    echo "Frontend deployed successfully"
else
    echo "Nginx configuration test failed"
    exit 1
fi

echo "部署完成: $(date)"