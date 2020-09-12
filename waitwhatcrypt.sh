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

	echo -e "·Basic usage: ./waitwhatcrypt.sh [OPTION] \"your text\""

	echo -e "\n·Options:"
	echo -e "    -h -> Use the flag '-h' to show this help menu. You can also use flags 'h', '--help', 'help' or just nothing to see this menu."
	echo -e "    -e -> Use the flag '-e' to encrypt your text. You can also use flags 'e', '--encrypt' or 'encrypt' to use the encrypt function."
	echo -e "    -d -> Use the flag '-d' to decrypt your text. You can also use flags 'd', '--decrypt' or 'decrypt' to use the decrypt function."

	echo -e "\n·INFO 1: Blank spaces are represented by a backslash ('\\') and final return key are represented by a square bracket (']'), so be careful at using backslashes and square brackets in your text!"
	echo -e "·INFO 1.1: Decrypt function is almost perfect, but, at least for now, it destroy any backslash ('\\'), square bracket (']') or numbers in your text, so be careful at using backslashes, square brackets and numbers in your text! (See Decrypt example 2 to a better understanding)."
	echo -e "·INFO 2: To use special characters/commands in your text, like '\\', '\$', '\"' or '\\\n', you must add '\\' (backslash(es)) BEFORE it! (See Encrypt example 2 to a better understanding)."
	echo -e "·INFO 3: At least for while, this script CAN NOT encrypt capital letters!"

	echo -e "\n·Usage examples:"
	echo "    [Encrypt] #1"
	echo "    |   Input:"
	echo "    |   |   ./waitwhatcrypt.sh -e \"f... society\""
	echo "    |   Output:"
	echo "    |   |   ·Original text: ' f... society '"
	echo "    |   |   ·Encrypted string: ' 25g...\24j21n20s75o120b182u112y] '"
	echo "    |   |"
	echo "    [Decrypt] #1"
	echo "    |   Input:"
	echo "    |   |   ./waitwhatcrypt.sh -d \"25g...\24j21n20s75o120b182u112y]\""
	echo "    |   Output:"
	echo "    |   |   ·Original string: ' 25g...\24j21n20s75o120b182u112y] '"
	echo "    |   |   ·Decrypted text: ' f... society '"
	echo "    |   |"
	echo "    [Encrypt] #2"
	echo "    |   Input:"
	echo "    |   |   ./waitwhatcrypt.sh -e \"for a in \\\$(seq \\\$((2+3+\\\$RANDOM%15))); do echo \\\$a | tr \\\"\\\\\n\\\" \\\" \\\"; done; echo \\\"\\\";\""
	echo "    |   Output:"
	echo "    |   |   ·Original text: ' for a in \$(seq \$((2+3+\$RANDOM%15))); do echo \$a | tr \"\n\" \" \"; done; echo \"\"; '"
	echo "    |   |   ·Encrypted string: ' 25i14w33i\68u\75r36z\\\$(84r160a90t\\\$((20k+33m+\$RANDOM%12c65h)));\252l105k\320c85j162m133x\\\$340x\|\546w242n\\\"\138v\\\"\\\"\\\";\432g175j156t540d;\560h145i270p217s\"\";] '"
	echo "    |   |"
	echo "    [Decrypt] #2"
	echo "    |   Input:"
	echo "    |   |   ./waitwhatcrypt.sh -d \"25e14d33s\\\68u\\\75l36p\\\\\\\\\\\$(84k160b90s\\\\\\\\\\\$((20s+33v+\\\$RANDOM%12y65h)));\\\252m105k\\\320e85d162j133c\\\\\\\\\\\$340m\\\|\\\546s242o\\\\\\\"\\\\\\138l\\\"\\\\\\\"\\\\\\\";\\\432r175o156m540r;\\\560o145g270z217p\\\\\\\"\\\";]\""
	echo "    |   Output:"
	echo "    |   |   ·Original string: ' 25e14d33s\68u\75l36p\\\$(84k160b90s\\\$((20s+33v+\$RANDOM%12y65h)));\252m105k\320e85d162j133c\\\$340m\|\546s242o\\\"\138l\"\\\"\\\";\432r175o156m540r;\560o145g270z217p\\\"\";] '"
	echo "    |   |   ·Decrypted text: ' for a in  \$(seq  \$((x+v+\$RANDOM%kc))); do echo  \$a | tr \"  n\" \" \"; done; echo \"\"; '"
	echo ""

}

#Executing menu function:
if [ "$1" == "-h" -o "$1" == "h" -o "$1" == "--help" -o "$1" == "help" -o "$2" == "" ]
then

	menu
	exit

#Encrypting a text:
elif [ "$1" == "-e" -o "$1" == "e" -o "$1" == "--encrypt" -o "$1" == "encrypt" ]
then

	bash .wwc-core/encrypt.sh "$inp"

#Decrypting a string:
elif [ "$1" == "-d" -o "$1" == "d" -o "$1" == "--decrypt" -o "$1" == "decrypt" ]
then

	bash .wwc-core/decrypt.sh "$inp"

#Error filter:
else

	echo -e "·This is an error...\n·Please report it to me in the 'Issues' tab on the project's GitHub repo: https://github.com/sidneypepo/waitwhatcrypt/issues :)\n"
	exit

fi
#End of script :p
