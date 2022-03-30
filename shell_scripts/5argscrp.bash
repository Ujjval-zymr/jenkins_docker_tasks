#5) Create a shell script takes argument from terminal and based on that it should print , Example
#if argument is -h it should print "Help"
#if argument is -p it should print "Python"
#if argument is -t it should terminate the program

#!/bin/bash
echo "Enter inputs -p -h -t"
#ARGUMENT="-h -p -t" 
while :
do
    read ARGUMENT
    case $ARGUMENT in
        -h)
            echo "help"
            ;;
        -p)
            echo "python"
            ;;
        -t)
            echo "Terminated"
            break 
            ;;
        *)  echo "Error:Invalide Selection"
        ;;
    esac
done
