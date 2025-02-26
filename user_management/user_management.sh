#!/bin/bash
# add users from the file and added default passwd

USER_FILE=/home/ubuntu/user_management/user.txt
PASS="abhi"
cat "${USER_FILE}" | while read users
do
        sudo useradd ${users}
        echo "${users}:${PASS}" | sudo chpasswd
done

#!/bin/bash
#

echo "Type the username you want to add"
read username
echo "Enter the password you want to set for $username"
read -s password
if ! getent passwd "$username";
then
        echo "Going to add $username"
        sudo useradd $username
        echo "$username:$password" | sudo chpasswd
        echo -e "\033[0;32m user added sucessfully \033[0m"
else
        echo "user is present already!!"
fi

