#!/bin/bash
# add users from the file and added default passwd

USER_FILE=/home/ubuntu/user_management/user.txt
PASS="abhi"
cat "${USER_FILE}" | while read users
do
        sudo useradd ${users}
        echo "${users}:${PASS}" | sudo chpasswd
done
