#!/bin/bash

source_dir="/tmp/shellscript"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[34m"

if [ ! -d $source_dir ]
  then
    echo -e "Error:: $R.. Given directory is not exist.. $N"
  else
    echo -e "$G Directory exist $N"
fi

files_to_move=$(find $source_dir -type f -mtime +14 -name "*.log" -exec mv {} /tmp/pavan/ \; )

if [ $? -ne 0 ]
then
echo -e "$R Error:: $files_to_move are not moved $N"
else
echo -e "$G Files are moved $N" 
fi



# rm -rf $files_to_delete

# if [ $? -ne 0 ]
#  then
#    echo -e "Error:: $R.. Old logd are not deleted.. $N"
#  else
#    echo -e "$G Deleted $file_to_delete.. $N"
# fi