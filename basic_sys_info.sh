#!/bin/bash                

echo "This scripts consists of BASIC System Information Commands"
echo "what is your name?"
read name
echo "$name  here is the follwing information : "
echo "The hostname is $(hostname)"
echo "Finding the user $(whoami)"
echo "Checking uname - unique name $(id -un)"
echo "today's date is  $(date)"
