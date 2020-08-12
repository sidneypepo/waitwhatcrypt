#!/bin/bash

#Credits:
#  _                              _    __
# | |                            | |  /  |
# | | _  _   _     ___ _   _  ___| | /_/ |____
# | || \| | | |   /___) | | |/___) || \| |  _ \
# | |_) ) |_| |  |___ | |_| |___ | |_) ) | | | |
# |____/ \__  |  (___/ \__  (___/|____/|_|_| |_|
#       (____/        (____/

#Script banner:
echo " _       __      _ __ _       ____          __  ______                 __"
echo "| |     / /___ _(_) /| |     / / /_  ____ _/ /_/ ____/______  ______  / /_"
echo "| | /| / / __ \`/ / /_/ | /| / / __ \/ __ \`/ __/ /   / ___/ / / / __ \/ __/"
echo "| |/ |/ / /_/ / / /_ | |/ |/ / / / / /_/ / /_/ /___/ /  / /_/ / /_/ / /_"
echo "|__/|__/\__,_/_/\__/ |__/|__/_/ /_/\__,_/\__/\____/_/   \__, / .___/\__/"
echo -e "────────────────────────── 「C0d3d by sysb1n 」────────/____/_/──────────\n"

#Var for input string:
inp=$2

#Main menu function:
menu() 
{
	echo -e "·Basic usage: ./script.sh [OPTION] \"your text\""

	echo -e "\n·Options:"
	echo -e "    -h -> Use the flag '-h' to show this help menu. You can also use flags 'h', '--help', 'help' or just nothing to see this menu."
	echo -e "    -e -> Use the flag '-e' to encrypt your text. You can also use flags 'e', '--encrypt' or 'encrypt' to use the encrypt function."
	echo -e "    -d -> Use the flag '-d' to decrypt your text. You can also use flags 'd', '--decrypt' or 'decrypt' to use the decrypt function."

	echo -e "\n·INFO 1: Blank spaces are represented by a backslash (' \\ ') and final return key are represented by a square bracket (']'), so be careful at using backslashes and square brackets in your text!"
	echo -e "·INFO 2: To use special characters/commands in your text, like ' \\ ', ' \$ ', ' \" ' or ' \\\n ', you must add ' \\ ' (backslash(es)) BEFORE it! (See Encrypt example 2 to a better understanding)."
	echo -e "·INFO 3: At least for while, this script CAN NOT encrypt capital letters!"

	echo -e "\n·Usage examples:"
	echo -e "    [Encrypt] #1\n    |   Input: \n    |   |   ./cript.sh -e \"f... society\" \n    |   Output:\n    |   |   Original text: ' f... society '\n    |   |   Encrypted string: ' 25h...\24y21d20a75g120s182p112r] '\n    |   |"
	echo -e "    [Encrypt] #2\n    |   Input: \n    |   |   ./cript.sh -e \"for a in \\\$(seq \\\$((2+3+\\\$RANDOM%15))); do echo \\\$a | tr \\\"\\\\\\\\\\\n\\\" \\\" \\\"; done; echo \\\"\\\";\" \n    |   Output:\n    |   |   Original text: ' for a in \$(seq \$((2+3+\$RANDOM%15))); do echo \$a | tr \"\\\n\" \" \"; done; echo \"\"; '\n    |   |   Encrypted string: ' 25p14n33i\\68c\\75x36s\\\$(84d160s90p\\\$((20m+33i+\$RANDOM%12y65o)));\\252d105u\\320v85m162y133r\\\\\$340k\\|\\546j242v\\\\\"\\138t\"\\\\\"\\\\\";\\432h175c156g540h;\\560x145o270d217j\\\"\";] '\n" 
}

#Letter cutter function:
cutt() { echo "a b c d e f g h i j k l m n o p q r s t u v w x y z" | cut -d "$1" -f 1 | tr " " "\n" | wc -l; }

#Random letter chooser function:
rl() { echo " m n b v c x z l k j h g f d s a p o i u y t r e w q" | cut -d " " -f $((($RANDOM%25)+1)); }

#Executing menu function:
if [ "$1" == "-h" -o "$1" == "h" -o "$1" == "--help" -o "$1" == "help" -o "$2" == "" ]
then

	menu
	exit

#Encrypting a text:
elif [ "$1" == "-e" -o "$1" == "e" -o "$1" == "--encrypt" -o "$1" == "encrypt" ]
then

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

	#Encrypt layer 6 - Separating all numbers and multiplying every single one by the position of the count of its respective column and adding a random char after multiplied number:
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
	echo -e "·Encrypted string: ' $el6 '\n"
	exit

#Decrypting a string:
elif [ "$1" == "-d" -o "$1" == "d" -o "$1" == "--decrypt" -o "$1" == "decrypt" ]
then

	echo -e "·This function is under construction...\n·Sorry for this inconvenient :/\n"
	exit

#Error filter:
else

	echo -e "·This is an error...\n·Please report it to me in the 'Issues' tab on the project's GitHub repo: https://github.com/sidneypepo/waitwhatcrypt/issues :)\n"
	exit

fi
#End of script :p
