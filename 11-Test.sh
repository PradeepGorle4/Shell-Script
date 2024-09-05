#!/bin/bash

#Script for Installing softwares

TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP"

echo -e "Script started executing at $TIMESTAMP"

echo "Checking for root access"

ID=$(id -u)

VALIDATE() {
    if [ $? -ne 0 ]
then
    echo "$R ERROR: Installing $1 ....FAILED $N"
    exit 1
else
    echo " $G Installing $1 ....SUCCESS $N"
fi
}

if [ $ID -ne 0 ]
then
    echo "$R ERROR: Please run with root access $N"
    exit 1
else
    echo "$G You are root user $N"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE "MYSQL"

yum install git -y &>> $LOGFILE

VALIDATE "GIT"
