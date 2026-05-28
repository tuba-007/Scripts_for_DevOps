#!/bin/bash

echo "Hi This Scripts go through the basic commands on user management"
echo "today is $(date +%F)"

echo "To create a user : sudo useradd username"


if [ "$EUID" -ne 0]
then
  echo "Please use sudo user"
else
   echo "Ceating a user called testuser"
fi

useradd -m testuser
passwd testuser
echo "User created , check /etc/passwd for user list"

su - testuser -c "whoami"