#!bin/bash
ID=$(id -u)
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "Error:: $2.... failed"
        exit 1
    else
        echo "$2..... Success"  
fi
}

if [ $ID -ne 0 ]
then
   echo "Error:: Please run with root user"
   exit 1

else
   echo "Running with root user"
fi

yum install mysql -y 

VALIDATE $? "Installation of mysql"

yum install git -y 

VALIDATE $? "Installation of git"



