#!/bin/bash

# This method is useful to safeguard username and password against exposing to history commands and stuff


echo "Please enter your username: "

read USERNAME  # This value you enter is automatically taken as username variable.

echo "your username is : " $USERNAME 

# Please do not print usernames and passwords in scripts, this is just for practice purpose.

echo "Please enter your password: "

read PASSWORD

echo "Your Password is: " $PASSWORD # Again, please do not print usernames and passwords in scripts, this is just for practice purpose.

# Done.
