#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "$2 ... **FAILURE**" 
else 
    echo "$2 ... SUCCESS"
fi

echo "" 

VALIDATE(){
    if [ $1 -ne 0 ]; then
      echo "$2 ... FAILURE"
    
    else
      echo "$2 ... SUCCESS"
 fi
}   

dnf install nginx -y 
VALIDATE $?  "installing Niginx"

dnf install 1mysql -y
VALIDATE $?  "installing mysql"

dnf install nodejs -y
VALIDATE $?  "installing  nodejs"