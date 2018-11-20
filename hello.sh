#!/bin/bash
#Program:
#show "Hello World!"
PATH=/bin:sbin:/usr/bin:usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
password='shabadabadoo'
echo ${password} | sudo -S apt-get update
read -p "Please keyin your name: " -t 30 unm #等待輸入
echo "Hello ${unm}!"
#ls ~/	#用ls讀取目錄
#pwd
#gnome-terminal -x bash -c "sh /home/kumakai/bin/hello.sh;read"
#結語

read -rsn1 -p"Press any key to continue..."
exit 0
