#!/bin/bash


Person1=$1
Person2=$2

# Person1 and Person 2 are the variables here, however we use arguments here.
# so when ever a person runs the script they need to enter the arguments and those values will be directly substitued in $1 and $2resp#


echo "$Person1: Hi $Person2, how are you..?"
echo "$Person2: Hi $Person1,Iam good, whatsup"
echo "$Person1: Nothing much $Person2, busy as always. How is your life going"
echo "$Person2: Yeah, it's alright. Life's going great infact. Lets catch up sometime $Person1"

# By using this method, we can avoid changing the code which is the best practise.