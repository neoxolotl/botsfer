filename='weekday.txt'
while read line; do
day=`echo $line | cut -c 1-3`
echo $day
