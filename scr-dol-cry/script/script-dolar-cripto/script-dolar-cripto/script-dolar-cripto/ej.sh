clear
echo "Nombre y edades"
echo "---------------"
 
 
nombre=`cut -d ":" -f1 file1`
edad=`cut -d ":" -f2 file1`
 
echo "$nombre tiene $edad años."

