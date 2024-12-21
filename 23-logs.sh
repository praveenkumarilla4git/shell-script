#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
LOG_DIR="./logs"
mkdir -p "$LOG_DIR"
LOGFILE="./logs/$0-$TIMESTAMP.log"

echo "script name: $0"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR:: $2 .. failed"
        exit 1
    else
        echo -e "$2 \e[32m successful \e[0m"
    fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1
else
    echo "You are the root user"
fi

yum install python -y &>> $LOGFILE

VALIDATE $? "Installing Python"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing git"
