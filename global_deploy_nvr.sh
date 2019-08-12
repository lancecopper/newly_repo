# 解压缩，将部署包中断内容mv到上一级目录
## cd 20190717
## mv * ../

#if [[ $UID -ne 0 && $# -ne 2 ]];then
#    echo "e.g. \"$0 facility\""
#    exit 1
#fi

date = 20190810

# 下载部署包
#wget -O deploy$date.zip https://github.com/lancecopper/newly_repo/blob/master/nvr20190809.zip?raw=true
#unzip deploy$date.zip -d deploy$date

wget -O deploy20190810.zip https://github.com/lancecopper/newly_repo/blob/master/nvr20190809.zip?raw=true
unzip deploy20190810.zip -d deploy20190810

cd deploy20190810
echo 123456 | sudo -S ls
sudo chmod +x deploy_nvr.sh
./deploy_nvr.sh



