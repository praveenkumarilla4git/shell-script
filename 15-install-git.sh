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

if [ "$?" -ne 0 ]
then
    echo "git installation is failed"
    exit 1 # you want to exit
else
    echo "git installation is success"
fi

yum install python -y

if [ "$?" -ne 0 ]
then
    echo "python installation is failed"
    exit 1 # you want to exit
else
    echo "python installation is success"
fi
