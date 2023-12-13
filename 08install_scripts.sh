#!bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
echo "Error:: Please run script with root user"
else
echo "Running with root user"
fi