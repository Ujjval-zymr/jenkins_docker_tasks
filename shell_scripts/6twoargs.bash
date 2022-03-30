#Create a shell script which takes two argument and it should first check if any argument passed or not. If passed then print both argument and if not passed then it should terminate the program
#!/bin/bash

echo "Enter 1st argument"
read arg1
echo "Enter 2nd argument"
read arg2

#if [ -z "$arg1" ] && [ -z "$arg2" ]; then
if [ -z "$arg1" ] || [ -z "$arg2" ]; then      #-z for checking null argument value.
    echo Terminated
    exit
else
    echo "Argument 1 is :$arg1"
    echo "Argument 2 is :$arg2"
fi
