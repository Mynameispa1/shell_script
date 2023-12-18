#!/bin/bash
file="/etc/passwd"
if [ ! -f $file ]
 then
   echo "Error:: The given directory not exist"
fi

while IFS=":" read -r username password user_id group_id user_fullname
do 
    echo "username: $username"
    echo "password: $password"
    echo "user_id: $user_id"
done < $file
