#!/bin/bash

# This script is for installing mysql and other softwares like git etc..

ID=$(id -u) # id -u displays the user id. Only root user has user id as 0, rest user ID's are not zero in linux.

if [ $ID -ne 0 ]  # if user id is not eqauls to 0, that is not root user
then
    echo "Error: Please run this script with root user access"
    exit 1 # we can give anyother number except 0 here as if we give 0 it takes exit status as success and proceeds to next line.
else
    echo "you are root user"
fi

yum install mysql -y

