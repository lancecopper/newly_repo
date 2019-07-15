## 新机一键部署脚本

## 待办
### 1. 变量
### 2. 传参
### 待解决的问题: 目前还只能手动改config.ini中的设备号

echo 123456 | sudo -S ls

# vgsagent
cd /home/vgs/vgsagent/

sudo chmod +x init.sh
./init.sh

# nvr
cd /home/vgs/nvr

sudo chmod +x init.sh
./init.sh


# nvrcloudsorage
cd /home/vgs/nvrcloudstorage

sudo chmod +x init.sh
./init.sh


# rc.local
sudo chmod + x rc.local
sudo mv -f rc.local /etc/rc.local





