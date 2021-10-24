#!/bin/bash
PATH=/bin:/usr/bin:

NONE='\033[00m'
RED='\033[01;31m'
GREEN='\033[01;32m'
YELLOW='\033[01;33m'
PURPLE='\033[01;35m'
CYAN='\033[01;36m'
WHITE='\033[01;37m'
BOLD='\033[1m'
UNDERLINE='\033[4m'

echo -e "This text is ${RED}red${NONE} and ${GREEN}green${NONE} and ${BOLD}bold${NONE} and ${UNDERLINE}underlined${NONE}."


while :
do 
	#curl https://api.bluelytics.com.ar/v2/latest > file
	#peluquear
	curl -s https://api.bluelytics.com.ar/v2/latest | jq . | less  > file

	echo "eliminar comillas dobles"
	sed 's/\"//g' file > file1
	#sed 's/\{//g' file1 > file2i

	echo "eliminar { "
	sed 's/{/\n/' file1 > file

	echo "eliminar } "
	sed 's/},/\n/' file > file1


	echo "File redy: file1"
	cat file1


	#echo "only values"
	#edad=`cut -d ":" -f2 file1`

	echo "$edad" > file2
	./leefile2.sh
done
