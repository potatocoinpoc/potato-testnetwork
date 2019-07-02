#!/bin/bash

OS_NAME=$( cat /etc/os-release | grep ^NAME | cut -d'=' -f2 | sed 's/\"//gI' )

case "$OS_NAME" in
    "CentOS Linux")
        sudo yum install ntpdate ntp -y

        sudo timedatectl set-timezone UTC
        sudo ntpdate -u time.windows.com
        sudo hwclock --systohc # 写入硬件

        sudo systemctl enable ntpd
        sudo systemctl start ntpd
        ;;
    "Ubuntu" | "Linux Mint")
        sudo apt install ntpdate ntp -y

        sudo timedatectl set-timezone UTC
        sudo ntpdate -u time.windows.com
        sudo hwclock --systohc # 写入硬件

        sudo systemctl enable ntp 
        sudo systemctl start ntp 
        ;;
esac