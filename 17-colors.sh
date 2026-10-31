#!/bin/bash

user_id=$(id -u)
logs_folder="/var/log/shell-practice"
logs_file="${logs_folder}/${0}.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $user_id -ne 0 ]; then
    echo "please run the script with root access."
    exit 1
fi

echo "Script stated execution at:: $(date +"%F %T")" &>>$logs_file

mkdir -p $logs_folder

validate(){
if [ $1 -ne 0 ]; then
    echo -e "$2...${R}FAILED ${N}"|tee -a $logs_file
    exit 1
else
    echo  -e "$2...${G}SUCCESS ${N}" |tee -a $logs_file
fi

}


for package in $@
do
    dnf list installed ${package} &>>$logs_file
    if [ $? -ne 0 ]; then 
        echo "Going to install ${package}"
        dnf install $package -y &>>$logs_file
        validate $? "Installing ${package}"
    else
        echo "${package} is already installed...${Y}SKIPPING ${N}" |tee -a $logs_file
    fi
done

echo "Script completed execution at:: $(date +"%F %T")" &>>$logs_file