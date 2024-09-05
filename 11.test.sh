#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo "Script started executing at $TIMESTAMP"

LOGFILE="/tmp/$0-$TIMESTAMP.log

if [ $ID -ne 0 ]
do
    echo "ERROR: you are not a root user"
    exit 1
else 
    echo "You are a root user"
fi

VALIDATE() {
    if [ $? -ne 0 ]
    do
        echo "ERROR: INSTALLATION of $1... $R"
        exit 1
    else
        echo "INSTALLATION OF $1... $G"
    fi
}

yum install git &>> $LOGFILE

VALIDATE Git


