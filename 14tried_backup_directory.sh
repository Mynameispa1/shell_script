#!bin/bash
<<com
TIMESTAMP=$(date +%F-%H-%M-%S)
echo "Please enter the source directory to create"
read Source_dir
if [ ! -d "$source_dir" ]
then
    echo "Error: Source directory $source_dir not exist. Creating"
    mkdir /tmp/pavan.txt
else 
    echo "Source code available"
fi    

read destination_dir

if [ ! -d "$destination_dir" ]
then 
    echo "Error: Destination $destination_dir not exist. Creating"
    mkdir /tmp/kumar
else
    echo "Destination available"
fi

backup_filename="${destination_dir}/backup_${TIMESTAMP}.tar.gz"
tar -czvf "$backup_filename" "$source_dir"

if [ $? -eq 0 ]; then
echo "Backup successful. Archive saved as: $backup_filename"
else
echo "Error: Backup failed."
fi
com



