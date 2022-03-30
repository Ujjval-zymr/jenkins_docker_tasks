#Create a txt file which will contain a collection with key value pair with data["A":1, "B": 30, "C": "Devops"] with script

#!/bin/bash
f1="/home/ujjval.d@ah.zymrinc.com/shell_scripting/keyvalpair.txt"
if [ -e "$f1" ]; then
  echo "File "$f1" already exists!"
else
  touch keyvalpair.txt
  echo "A 1" >> keyvalpair.txt          #append data to keyvalpair file.
  echo "B 30" >> keyvalpair.txt
  echo "C Devops" >> keyvalpair.txt
  echo "keyvalpair.txt file created"
fi 