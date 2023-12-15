#!bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
Log_Path="/tmp/$0-$TIMESTAMP"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[34m"

VALIDATE(){
   if [ $1 -ne 0 ]
   then
   echo "Error:: $2.... FAILED" 
   else
   echo "$2.... SUCCESS" 
   fi
}

if [ $ID -ne 0 ]
then
echo "Error:: Please run with root user" 
exit 1
else
echo "Running with root user" 
fi

for package in $@
    do
    yum list installed $package 
    if [ $? -ne 0 ]
    yum install $package -y &>> $Log_Path
    VALIDATE $? "Installation of $package" 
    else
    echo "$package is already installed..... SKIPPING"  
   fi
done




