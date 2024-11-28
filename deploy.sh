#!/bin/bash

# 停止现有进程
if pgrep -f "./app" > /dev/null; then
    pkill -f "./app"
    sleep 2
fi

# 启动新的后端程序
nohup ./app > app.log 2>&1 &

# 更新前端文件
if [ -d "/var/www/html" ]; then
    sudo rm -rf /var/www/html/*
    sudo cp -r web/dist/* /var/www/html/
fi

echo "部署完成!"