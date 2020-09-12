#!/bin/bash

#Var for input string:
inp=$1

#Number cutter function:
cutn() 
{
	case $1 in 
		17) echo -n "a" ;;
		23) echo -n "b" ;;
		5) echo -n "c" ;;
		18) echo -n "d" ;;
		20) echo -n "e" ;;
		25) echo -n "f" ;;
		21) echo -n "g" ;;
		9) echo -n "h" ;;
		15) echo -n "i" ;;
		16) echo -n "j" ;;
		1) echo -n "k" ;;
		19) echo -n "l" ;;
		4) echo -n "m" ;;
		6) echo -n "n" ;;
		7) echo -n "o" ;;
		8) echo -n "p" ;;
		10) echo -n "q" ;;
		11) echo -n "r" ;;
		12) echo -n "s" ;;
		26) echo -n "t" ;;
		24) echo -n "u" ;;
		3) echo -n "v" ;;
		22) echo -n "w" ;;
		2) echo -n "x" ;;
		14) echo -n "y" ;;
		13) echo -n "z" ;;
		*) echo -n "$1" ;;
	esac
}


#Printing original string:
echo -e "·Original string: ' $inp '"

#Decrypt layer 1 - Separating all numbers and removing a random char after divided number:
dl1="$(for cntn in $(seq $(echo $inp | wc -c))
do

	#Separating a number:
	isn="$(echo -n $inp | cut -b $cntn)"

	#Removing the random char after the number:
	if [[ "$isn" != [0-9] ]]
	then

		echo $inp | cut -b $cntn | tr -d a-z

	else

		echo $isn | tr -d "\n" | tr "\n" " "

	fi

done)"

#Decrypt layer 2 - Dividing every single number by the position of the count of its respective column:
dl2="$(for cntl in $dl1
do

	#Separating a number:
	isl="$(echo $cntl | grep "[1-9]")"

	#Dividing the number by the position of the count of its respective column
	if [[ "$isl" != "" ]]
	then

		let cnt++
		echo $(($cntl/$cnt))

	else

		echo $cntl

	fi

done)"

#Encrypt layer 3 - Choosing the number in its respective line and converting it into an a-z char:
dl3="$(for cntc in $dl2
do

	#Separating a number:
	isl="$(echo $cntc | grep "[1-9]")"

	#Converting number into char:
	if [ "$isl" != "" ]
	then

		cutn $cntc

	else

		echo $cntc

	fi

done | tr -d " ")"

#Decrypt layer 4 - Re-organizing text:
dl4="$(echo $dl3 | tr -d " " | tr "\n" " ")"

#Decrypt layer 5 - Removing final square bracket:
dl5="$(echo $dl4 | tr -d "]")"

#Decrypt layer 6 - Removing backslashes and switching it into blank spaces:
dl6="$(echo $dl5 | tr "\\\\" " ")"

#Printing final decrypted text:
echo -e "·Decrypted text: ' $dl6 '\n"
exit
