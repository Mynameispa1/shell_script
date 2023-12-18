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

files_to_delete=$(find /tmp/shellscript/ -type f -mtime +14 -name "*.log")

rm -rf $files_to_delete

if [ $? -ne 0 ]
 then
   echo -e "Error:: $R.. Old logd are not deleted.. $N"
 else
   echo -e "$R Required old logs are deleted.. $N"
fi


