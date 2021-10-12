#!/bin/bash
filename='weekday.txt'
while read line; do
day=`echo $line | cut -c 1-3`
if [ $day == "Sun" ]
then
echo "Sunday is the holiday"
else
echo $day
fi
done<$filename
