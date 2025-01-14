#!/bin/bash
#AUTHOR:ROYOFFICIAL
#MINECRAFT_SERVER_BACKUP_PROGRAM
FILE="server_"$(date +%Y%m%d%H%M)".zip"
path="/path/${FILE}" #存放文件的路径
if [ -f /bin/apt ];
then
apt update
apt install zip unzip -y
elif [ -f /bin/yum ];
then
yum update
yum install zip unzip -y
else
echo "system not supported"
exit
fi
zip -r $path /minecraft/*