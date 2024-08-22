#!/bin/bash

# This method is useful to safeguard username and password against exposing to history commands and stuff


echo "Please enter your username: "

read -s USERNAME  # This value you enter is automatically taken as username variable.

# read -s , here -s is to hide the arguments you are passing while running this script. So here when you enter username it will not display in the terminal.


echo "your username is : " $USERNAME 

# Please do not print usernames and passwords in scripts, this is just for practice purpose.

echo "Please enter your password: "

read -s PASSWORD

echo "Your Password is: " $PASSWORD # Again, please do not print usernames and passwords in scripts, this is just for practice purpose.

# Done.
