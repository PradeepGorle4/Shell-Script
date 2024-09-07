#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE() {
if [ $? -ne 0 ]
then 
    echo -e "$R ERROR: Installation of $1...FAILED $N"
else
    echo -e "Installation of $1...$G SUCCESS $N"
fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR: Please run with root access $N"
    exit 1
else
    echo "you are root user"
fi

for package in $@
do
    yum list installed $package &>> $LOGFILE
    if [ $? -ne 0 ]
    then
        yum install $package -y &>> $LOGFILE
        VALIDATE $package 
    else
        echo "$package is already Installed.....Skipping It"
    fi
done
