#!/bin/bash

NUMBER1=$1
NUMBER2=$2



echo "Please enter your NUMBER1"
read NUMBER1 

echo "Please enter your NUMBER2"
read NUMBER2 

SUM=$(($NUMBER1+$NUMBER2))
echo "Total: $SUM"