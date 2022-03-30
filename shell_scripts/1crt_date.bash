#Create a shell script which will print current date in day-month-YYYY. Example: 12th-Jan-1999

#!/bin/bash
d=`date +%d-%m-%Y`
echo "Current Dates is:$d"
