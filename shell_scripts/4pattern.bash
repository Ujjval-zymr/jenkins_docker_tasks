: '
4) Write a script which will print.
1
2 3
4 5 6
7 8 9 10
'

#!/bin/bash

num=1
rows=5
for((i=1; i<rows; i++))
do
    for((j=1; j<=i; j++))
    do
        echo -n "$num "
        num=$((num + 1))
    done
echo 
done