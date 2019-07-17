# 下载部署包
## wget

# 将内容给复制出来
## cd 20190717
## mv * ../

echo 123456 | sudo -S ls

sudo chmod +x rc.local
sudo mv -f rc.local /etc/rc.local

## nvr
cd /home/vgs/nvr
sudo chmod +x init.sh
sudo ./init.sh

## nvrcloudstorage
cd /home/vgs/nvrcloudstorage
sudo chmod +x init.sh
sudo ./init.sh

## vgsagent
cd /home/vgs/vgsagent
sudo chmod +x init.sh
sudo ./init.sh
