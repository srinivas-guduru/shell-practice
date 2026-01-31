#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/logs/shell-scripts"
LOGS_FILE="/var/logs/shell-scripts/$0.log"

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

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $?  "installing Niginx"

dnf install 1mysql -y &>> $LOGS_FILE
VALIDATE $?  "installing mysql"

dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $?  "installing  nodejs"