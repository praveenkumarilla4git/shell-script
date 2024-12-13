#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ "$?" -ne 0 ]
    then
        echo "python installation is failed"
        exit 1 # you want to exit
    else
        echo "python installation is success"
    fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR: please run the script with root access"
    exit 1
else
    echo "You are root user"
fi


yum install python -y

VALIDATE