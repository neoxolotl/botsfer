filename='file2'
set c
dolar='u$s'
eur='Eur'


while read line; do
    

	cont=$((cont+1))
	#flags 
	#echo $cont
	#echo "------------------> contador-------->            "$cont
    
    valor=`echo $line | cut -c 1-3`
    #flags
    #echo "--------------------> "$valor
    fila=$cont

    case $fila in 
	5) 
	    echo $dolar" Avg "$valor
	#dolar_of_avg=$valor
	    ;;
	6)
	    echo $dolar" Sell "$valor 
	#dolar_of_sell=$valor
	    ;;
	7)
	    echo $dolar" Buy "$valor
	    ;;
	12)
	    echo $dolar" Avg "$valor
	    ;;
	13)
	    echo $dolar" Sell "$valor
	    ;;
	14)
	    echo $dolar" Buy "$valor
	    ;;
	19)
	    echo $eur" Avg "$valor
	    ;;
	20)
	    echo $eur" Sell "$valor
	    ;;
	21)
	    echo $eur" Buy "$valor
	    ;;
	26)
	    echo $eur" Avg "$valor
	    ;;
	27)
	    echo $eur" Sell "$valor
	    ;;
	28)
	    echo $eur" Buy "$valor
	    ;;


    esac

	    
	#flags funciona bien para saber si es igual
	#if [ $cont -eq $fila ];then 
	#    echo "Dolar Oficial Compra---------> "$valor
	#fi
	



    
done < $filename
