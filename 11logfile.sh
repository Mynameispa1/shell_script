#!bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGPATH="/tmp/$0-$TIMESTAMP.log"

FUNCTION(){

      if [ $1 -ne 0 ]
      then
         echo "Error:: $2 failed..."
         exit 1
     else
        echo "$2 successful..."
      fi
}
if [ $ID -ne 0 ]
then
echo "Error:: Please run script with root user"
exit 1
else
echo "Running with root user"
fi

yum install mysql -y &>> $LOGPATH

FUNCTION $? "Installing mysql"
yum install git -y &>> $LOGPATH
FUNCTION $? "Installing git"