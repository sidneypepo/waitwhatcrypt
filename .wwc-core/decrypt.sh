#!/bin/bash

#Var for input string:
inp=$1

#Printing original string:
echo -e "·Original string: ' $inp '"

#Decrypt layer 1 - :
a="$(echo ${inp//[^[:digit:]]/ })"
dl1="$(for cntn in $(seq $(echo $a | wc -c))
do

	#Separating a number:
	isn="$(echo $cntn | grep "[0-9]")"

	if [[ "$isn" == [0-9] ]]
	then

		let cnt++
		echo -n $(($cntn/$cnt))

	else

		echo -n $cntn

	fi

done)"
#Decrypt layer 2 - :

#Printing final decrypted text:
echo -e "·Decrypted text: ' $dl1 '\n"
exit

#echo -e "·This function is under construction...\n·Sorry for this inconvenient :/\n"
#exit
