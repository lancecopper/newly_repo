# 解压缩，将部署包中断内容mv到上一级目录
## cd 20190717
## mv * ../

#if [[ $UID -ne 0 && $# -ne 2 ]];then
#    echo "e.g. \"$0 facility\""
#    exit 1
#fi


# 下载部署包
# wget -O deploy$date.zip https://github.com/lancecopper/newly_repo/blob/master/nvr20190809.zip?raw=true
# unzip deploy$date.zip -d deploy20190810


date = 20190810
cd deploy$date

echo 123456 | sudo -S ls
sudo cp -rf lib* /usr/lib/x86_64-linux-gnu
sudo cp -rf ./HCNetSDKCom/lib* /usr/lib/x86_64-linux-gnu

echo 123456 | sudo -S ls
sudo apt install -y libboost-all-dev
echo 123456 | sudo -S ls
sudo apt install -y libcurl4-openssl-dev

echo 123456 | sudo -S ls
sudo chmod +x nvr.out
sudo cp -f nvr.out ~/nvr
sudo cp -f config.ini ~/nvr

// 杀死狗和nvr
sudo killall -9 watchdognvr.sh
sudo killall -9 nvr.out


// 重新启动nvr
cd ~/nvr
echo 123456 | sudo -S ls
sudo -S nohup ./nvr.out &
sudo -S nohup ./watchdognvr.sh &




