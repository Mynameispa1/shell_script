#!bin/bash

<<com
if [ today!=sunday ] 
then
    echo "Go to school"
else 
    echo "Happy Sunday"
fi
com

NUMBER=$1

if [ $NUMBER -gt 100 ]
then
    echo "The given number $NUMBER is greater then 100"

else
    echo "The given number $NUMBER is less then 100"
fi
