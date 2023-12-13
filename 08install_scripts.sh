#!bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
echo "Error:: Please run script with root user"
exit 1
else
echo "Running with root user"
fi

yum install mysql -y
if [ $? -ne 0 ]
then
 echo "Error:: Installation of mysql is failed"
else
 echo "Installation of mysql is successful"
fi

yum install git -y
if [ $? -ne 0 ]
then
 echo "Error:: Installation of git is failed"
else
 echo "Installation of git is successful"
fi