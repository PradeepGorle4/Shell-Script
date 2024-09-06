#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo -e "$R ERROR:: $1....FAILED $N"
        exit 1
    else
        echo -e "$G $1....SUCCESS $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR : you are not root user, run the script with sudo access $N"
    exit 1 # you can give anything other than 0
else
    echo -e "$G You are root user $N" 
fi # fi means reverse of if, indicating condition end

# echo "All arguments passed are $@"
# For eg: if we give the package arguments as git mysql postfix
# so it with take git in package for first time and run the loop and then it takes mysql and goes on till all pckgs are done

# $? - is for exit status of previous cmd. if it is 0 - exit status of prev cmd- success, other than 0- failure
for package in $@
do
    yum list installed $package &>> $LOGFILE # checking if package is already installed or not
    if [ $? -ne 0 ] # if not installed
    then # install it
        yum install $package -y &>> $LOGFILE
        VALIDATE "Installation of $package" # Validate it &>> $LOGFILE
    else
        echo -e "The package $package is already installed $Y ...Skipping It $N "  # else skip it 
    fi
done

# End of script.
# We have inplemented the best practices here such as storing logs, doing validations and using colours for better experience.