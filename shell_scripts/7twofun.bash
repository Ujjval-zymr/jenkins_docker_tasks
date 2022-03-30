#Write a shell script which will have two function. The file will take two argument, First function will feed first param and second function will feed second argument. Make sure if any of param is missing then it should throw error in gracefull way.

#!/bin/bash

echo "Enter 1st argument"
read arg1
echo "Enter 2nd argument"
read arg2

function argument1_fun()
{
    if [ -z "$arg1" ]; then                        #-z for checking null argument value.
    echo "1st Paramenet is missing"
    #exit
    else
    echo "Argument 1 is :$arg1"
    fi
}

function argument2_fun()
{
    if [ -z "$arg2" ]; then                         #-z for checking null argument value.
    echo "2nd Parameter is missing"
    #exit
    else
    echo "Argument 2 is :$arg2"
    fi
}

echo "Fnction is calling"
argument1_fun                                       #fun_call 1
argument2_fun                                       #fun_call 2
