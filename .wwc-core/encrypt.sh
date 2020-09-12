#!/bin/bash

#Var for input string:
inp=$1

#Letter cutter function:
cutt() { echo "a b c d e f g h i j k l m n o p q r s t u v w x y z" | cut -d "$1" -f 1 | tr " " "\n" | wc -l; }

#Random letter chooser function:
rl() { echo "m n b v c x z l k j h g f d s a p o i u y t r e w q" | cut -d " " -f $((($RANDOM%25)+1)); }

#Printing original text:
echo -e "·Original text: ' $inp '"

#Encrypt layer 1 - Switching alphabet:
el1="$(echo $inp | tr "abcdefghijklmnopqrstuvwxyz" "qwertyuiopasdfghjklzxcvbnm")"

#Encrypt layer 2 - Removing blank spaces and switching it into backslashes:
el2="$(echo $el1 | tr " " "\\\\")"

#Encrypt layer 3 - Removing final return key and switching it into a square bracket:
el3="$(echo $el2 | tr "\n" "]")"

#Encrypt layer 5 - Separating all chars with returns and switching all into numbers:
el5="$(for cntc in $(seq $(echo -n $el3 | wc -c))
do

	#Encrypt layer 4 - Choosing the a-z char in its respective line and converting it into a number:
	el4="$(echo $el3 | cut -b $cntc)"
	isc="$(echo $el4 | grep "[a-z]")"

	#Converting char into number:
	if [ "$isc" != "" ]
	then

		cutt $el4

	else

		echo $el4

	fi

done | tr "\n" " ")"

#Encrypt layer 6 - Separating all numbers, multiplying every single one by the position of the count of its respective column and adding a random char after multiplied number:
el6="$(for cntn in $el5
do

	#Separating a number:
	isn="$(echo $cntn | grep "[1-9]")"

	#Multiplying the number by the position of the count of its respective column and adding a random char after it:
	if [ "$isn" != "" ]
	then

		let cnt++
		echo -n $(($cnt*$cntn))$(rl)

	else

		echo -n $cntn

	fi

done)"

#Printing final encrypted string:
echo -e "·Encrypted string: ' $el5 '\n"
exit
