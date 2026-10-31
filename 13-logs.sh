#!/bin/bash

user_id=$(id -u)
logs_folder="/var/log/shell-practice"
logs_file="${logs_folder}/${0}.log"


if [ $user_id -ne 0 ]; then
    echo "please run the script with root access."
    exit 1
fi

echo "Script stated execution at:: ${date "+%F %T"}"

mkdir -p $logs_folder

validate(){
if [ $1 -ne 0 ]; then
    echo "$2...FAILED"|tee -a $logs_file
    exit 1
else
    echo "$2...SUCCESS" |tee -a $logs_file
fi

}


dnf install nginx -y &>>$logs_file
validate $? "Nginx installation" 


dnf install mysql -y &>>$logs_file
validate $? "Mysql installation" 


echo "Script completed execution at:: ${date +%F %T}"
