#!/bin/bash

ID=$(id -u)

if [ "$ID" -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 # you want to exit
else
    echo "you are root user"
fi

yum install git -y
yum install python -y
sudo rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022
wget http://dev.mysql.com/get/mysql57-community-release-el7-8.noarch.rpm
sudo yum localinstall -y mysql57-community-release-el7-8.noarch.rpm
sudo yum install -y mysql-community-server


if [ "$?" -ne 0 ]
then
    echo "mysql installation is failed"
    exit 1 # you want to exit
else
    echo "mysql installation is success"
fi