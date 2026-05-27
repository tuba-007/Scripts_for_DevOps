#!/bin/bash

echo "Hi This Scripts go through the basic commands on user management"
echo "today is $(date +%F)"

echo "To create a user : sudo useradd username"


if [ "$EUID" -ne 0]
then
  echo "Please use sudo user"
else
   echo "Ceating a user called user1"
fi

useradd user1

echo "User created , check /etc/passwd for user list"

su user1
echo "user is switched to user1"