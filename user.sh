#!/bin/bash


<<info

Going to create user 
Going to user change password
Going to remove user

info

# Create user


echo "================= create user==============="

read -p " Enter your user name: " username

read -p " Change password : " password



useradd "$username"

#echo "$username:$password" | sudo chpasswd

passwd "$username"

read -p " Delete user : " del
userdel "$del"

count=$(cat /etc/passwd | grep "$del" | wc | awk '{print $1}')

if [ $count -eq 0 ];
then
	echo " user  does not exit"

else 
	echo " user deleted"

fi
echo "================== user created and delete================"



