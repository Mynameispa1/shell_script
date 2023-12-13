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
if [ ($echo$? -ne 0) ]
then
 echo "Error:: Installation is failed"
else
 echo "Installation is successful"


