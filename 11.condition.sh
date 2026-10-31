#!/bin/bash

user_id=$(id -u)

echo "$user_id"
if [ $user_id -ne 0 ]; then
    echo "please run the script with root access."
    exit 1
fi

echo "proceeding...."

dnf install nginxxxx -y

dnf install mysqlll -y
