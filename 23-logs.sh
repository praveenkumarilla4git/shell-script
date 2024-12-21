#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

echo "script name: $0"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR:: $2 .. failed"
        exit 1
    else
        echo "$2 successful"
    fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exist 1
else
    echo "You are the root user"
fi

yum install python -y

VALIDATE $? "Installing Python"

yum install git -y

VALIDATE $? "Installing git"
