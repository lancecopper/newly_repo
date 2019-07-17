#! /bin/sh
#进程名字可修改
PRO_NAME=vgsagent
HOME_PATH=/home/vgs/vgsagent

while true ; do
  sleep 1
  NUM=`ps aux | grep ${PRO_NAME} | grep -v grep |wc -l`
  if [ "${NUM}" -lt "1" ];then
    echo "${PRO_NAME} was killed"
	cd ${HOME_PATH}
	nohup ./${PRO_NAME} > agent`date +%Y-%m-%d_%H-%M-%S`.log 2>&1 &
  fi
done

exit 0
