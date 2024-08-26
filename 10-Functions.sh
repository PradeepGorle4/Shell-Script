#!/bin/bash

#Script for Installing softwares

echo "Checking for root access"

ID=$(id -u)

VALIDATE() {
    if [ $? -ne 0 ]
then
    echo "ERROR: Installing $1 ....FAILED"
    exit 1
else
    echo "Installing $1 ....SUCCESS"
fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR: Please run with root access"
    exit 1
else
    echo "You are root user"
fi

PRECHECK=$(rpm -q $1)

Software_precheck() {
if [ $PRECHECK -ne 0 ]
then
    echo "PROCEEDING WITH INSTALLATION of $1"
else
    echo "$1 already exists"
    exit 1
fi
}

Software_precheck "mysql"

yum install mysql -y

VALIDATE "MYSQL"

Software_precheck "git"

yum install git -y

VALIDATE "GIT"
