#!/bin/bash

#Special variable

echo "all args passed to the script: $@"
echo "all args passed to the script as word: $*"
echo "Number of args passed to the script: $#"
echo "first variable: $1"
echo "Name of the current script: $0"
echo "realpath: $(realpath $0)"
echo "directory of current script: $PWD"
echo "who is running the script: $USER"
echo "Home directory of the current script: $HOME"
echo "PID of the current scritp: $$"
sleep 10 &
echo "PID of the script running in the background: $!"
wati $!
echo "previous command exit status: $?"
echo "Line number: $LINE"
echo "Total time executed for this script: $SECONDS"