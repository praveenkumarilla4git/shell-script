#!/bin/bash

USERNAME=$1
PASSWORD=$2

echo "Please enter your username"

read USERNAME # attached to username variable

echo "Please enter your passsword"
read -s PASSWORD # attached to password variable



echo "Username is: $USERNAME, Password is: $PASSWORD"