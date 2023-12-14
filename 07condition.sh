#!bin/bash
ID=$(id -u)
VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "Error:: Installation is failed"
        exit 1
    else
        echo "Installation is success"  
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

VALIDATE

yum install git -y

VALIDATE



