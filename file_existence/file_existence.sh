#!/bin/bash

file_path=/var/lib/messages
if [[ -e ${file_path} ]];
then
    echo "File found"
    if [[ -w ${file_path} ]];
    then 
        echo "file is editbale"
    else
        echo "File is not editable"
    fi
else
    echo "File not exists"
fi