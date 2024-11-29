# webhook部署测试
此项目是为方便测试部署webhook功能
目录结构：
```
.
├── sass 后端测试服务
    └── ...
├── web 前端测试服务
    └── ...       
├── deploy.sh
    ├── webhook.go
    ├── webhook.service
    └── deploy.sh
```
事先准备：
1. 使用服务器用户生成ssh密钥对，并上传公钥到GitHub的Deploy keys中
2. 在GitHub的Setting中设置Webhook，填写```Payload URL```为服务器的IP地址，选择```Content type```为```application/json```，选择```Which events would you like to trigger this webhook?```为```Just the push event.```

根据自己的用户以及路径修改```/webhook```下的所有文件中的用户和路径信息

根据自己的实际情况修改```/webhook/deploy.sh```的脚本命令

将```/webhook/webhook.service```复制到```/etc/systemd/system/webhook.service```

构建webhook.go，随后启动service即可进行监听，程序监听到git的push事件后，会自动部署到服务器上

目前的监听机制为：`main`分支提交，且提交的`message`中包含`@deploy`关键字时会进行更新