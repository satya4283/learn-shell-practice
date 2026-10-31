#!/bin/bash

user_id=$(id -u)

echo "$user_id"
if [ $user_id -ne 0 ]; then
    echo "please run the script with root access."
fi

echo "proceeding...."


dnf install nginxx -y