#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "ERROR:: Installation failed"
        exit 1
    else
        echo "Installing successful"
    fi
}

if [ $ID -ne 0]
then
    echo "ERROR:: Please run this script with root access"
    exist 1
else
    echo "You are the root user"
fi

yum install python -y

VALIDATE
