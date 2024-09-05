#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo "Script started executing at $TIMESTAMP &>> $LOGFILE"

LOGFILE="/tmp/$0-$TIMESTAMP.log

if [ $ID -ne 0 ]
do
    echo -e "ERROR: $R you are not a root user $N"
    exit 1
else 
    echo -e "$G You are a root user $N"
fi

VALIDATE() {
    if [ $? -ne 0 ]
    do
        echo -e " $R ERROR: INSTALLATION of $1... FAILED $N"
        exit 1
    else
        echo -e " $G INSTALLATION OF $1... SUCCESS $N"
    fi
}

yum install git -y &>> $LOGFILE

VALIDATE "GIT"