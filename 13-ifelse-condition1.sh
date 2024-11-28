#!/bin/bash

echo "Enter a number:"
read number

if [ $number -gt 100 ]; then

    echo "The number $number is greater than 100"
else
    echo "The number $number is less than 100"
fi