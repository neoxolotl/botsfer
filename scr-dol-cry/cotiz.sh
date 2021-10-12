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
