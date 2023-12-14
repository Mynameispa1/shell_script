#!bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[34m"
TIMESTAMP=$(date +%F-%H-%M-%S)
Log_Path="/tmp/$0-$TIMESTAMP.log"
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "Error:: $2.... $R failed $N"
        exit 1
    else
        echo -e "$2.....  Success $N"  
fi
}

if [ $ID -ne 0 ]
then
   echo -e "Error:: $R Please run with root user $N"
   exit 1

else
   echo -e "$G Running with root user$N"
fi

yum install mysql -y &>> $Log_Path

VALIDATE $? "Installation of mysql"

yum install git -y &>> $Log_Path

VALIDATE $? "Installation of git"



