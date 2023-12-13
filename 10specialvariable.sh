#!bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "The sum of two numbers is:: $SUM"

echo "How many args passwed is: $#"

echo "All args passwed: $@"

echo "Script name is: $0"

echo "Exit status of previous code of previous code: $?"
