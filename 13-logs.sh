#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="var/log/shell-scripts"
LOGS_FILE="/var/log/shell-scripts/$0.log"

if [ $USERID -ne 0 ]; then
   echo "Please run this script with root user access"
   exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
      echo "$2 ... FAILURE"
      exit 1
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