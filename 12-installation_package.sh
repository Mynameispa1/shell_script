#!bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[34m"
TIEMSTAMP=$(date +%F-%H-%M-%S)
Log_Path="/tmp/$0-$TIMESTAMP"
VALIDATE (){
if [ $1 -ne 0 ]
then
  echo "$2 is FAILLED"
  exit 1
else
  echo "$2 is SUCCESS"
}

if [ $ID -ne 0 ]
then
  echo -e "Error:: $R Please run script with root user $N"
  exit 1
else
  echo "$G You are running with root user $N"

fi

for PACKAGE in $@
do
   yum list installed $PACKAGE &>> $Log_Path

if [ $? -ne 0 ]
then
   yum install $PACKAGE -y &>> $Log_Path
   VALIDATE $? "Installation of $PACKAGE"
else
   echo "$2 is alreay installed.... $Y SKIPPING $N"
done
