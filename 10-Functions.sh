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

yum install mysql -y

VALIDATE "MYSQL"

yum install git -y

VALIDATE "GIT"
