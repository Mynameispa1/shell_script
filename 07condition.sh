#!bin/bash
ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo "Error:: Please run with root user"
   exit 1

else
   echo "Running with root user"
fi

yum install myql -y

if [ $? -ne 0 ]
then
  echo "Error:: Installation of mysql failed"
else
echo "Installation of mysql success"  
fi

