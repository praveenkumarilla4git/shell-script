#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 # you want to exit
else
    echo "you are root user"
fi

yum install git -y
yum install python -y


if [ $? -ne 0 ]
then 
    echo "ERROR:: Installing git and python are failed"
    exit 1
else
    echo "Installing git and pyhton are successful"
fi

