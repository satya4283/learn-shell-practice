#!/bin/bash

echo "please enter your marks:"
read MARKS

if [ $MARKS -lt 33 ];then
    echo "fail"
elif [ $MARKS -lt 50 ]; then
    echo "Third class"
elif [ $MARKS -lt 60 ]; then
    echo "second class"
elif [ $MARKS -lt 75 ]; then
    echo "first class"
else
    echo "distinction"
fi 

echo " END"