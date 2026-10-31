#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "please run the script with root access."
    exit 1
fi

echo "proceeding...."

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Nginx installation...FAILED"
    exit 1
else
    echo "Nginx installation...SUCCESS"
fi


dnf install mysqlll -y

if [ $? -ne 0 ]; then
    echo "Mysql installation...FAILED"
    exit 1
else
    echo "Mysql installation...SUCCESS"
fi
