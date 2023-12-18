#!/bin/bash

source_dir="/tmp/shellscript"

if [ ! d $source_dir ]
  then
    echo "Error:: Given directory is not exist"
  else
    echo "Directory exist"
fi

files_to_delete=$(find /tmp/shellscript/ -type f -mtime +14 -name "*.log")

rm -rf $files_to_delete

