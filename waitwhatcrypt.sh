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

	echo -e "\n·INFO 1: Blank spaces are represented by a backslash (' \\ ') and final return key are represented by a square bracket (']'), so be careful at using backslashes and square brackets in your text!"
	echo -e "·INFO 2: To use special characters/commands in your text, like ' \\ ', ' \$ ', ' \" ' or ' \\\n ', you must add ' \\ ' (backslash(es)) BEFORE it! (See Encrypt example 2 to a better understanding)."
	echo -e "·INFO 3: At least for while, this script CAN NOT encrypt capital letters!"

	echo -e "\n·Usage examples:"
	echo -e "    [Encrypt] #1\n    |   Input: \n    |   |   ./waitwhatcrypt.sh -e \"f... society\" \n    |   Output:\n    |   |   Original text: ' f... society '\n    |   |   Encrypted string: ' 25h...\24y21d20a75g120s182p112r] '\n    |   |"
	echo -e "    [Encrypt] #2\n    |   Input: \n    |   |   ./waitwhatcrypt.sh -e \"for a in \\\$(seq \\\$((2+3+\\\$RANDOM%15))); do echo \\\$a | tr \\\"\\\\\\\\\\\n\\\" \\\" \\\"; done; echo \\\"\\\";\" \n    |   Output:\n    |   |   Original text: ' for a in \$(seq \$((2+3+\$RANDOM%15))); do echo \$a | tr \"\\\n\" \" \"; done; echo \"\"; '\n    |   |   Encrypted string: ' 25p14n33i\\68c\\75x36s\\\$(84d160s90p\\\$((20m+33i+\$RANDOM%12y65o)));\\252d105u\\320v85m162y133r\\\\\$340k\\|\\546j242v\\\\\"\\138t\"\\\\\"\\\\\";\\432h175c156g540h;\\560x145o270d217j\\\"\";] '\n    |   |   "
	echo -e "    [Decrypt] #1\n    |   Input: \n    |   |   ./waitwhatcrypt.sh -d \"25h...\\\\\24y21d20a75g120s182p112r]\" \n    |   Output:\n    |   |   Original string: ' 25h...\\24y21d20a75g120s182p112r] '\n    |   |   Decrypted text: ' f... society '\n    |   |"
	echo -e "    [Decrypt] #2\n    |   Input: \n    |   |   ./waitwhatcrypt.sh -d \"25p14n33i\\68c\\75x36s\\\$(84d160s90p\\\$((20m+33i+\$RANDOM%12y65o)));\\252d105u\\320v85m162y133r\\\\\$340k\\|\\546j242v\\\\\"\\138t\"\\\\\"\\\\\";\\432h175c156g540h;\\560x145o270d217j\\\"\";]\" \n    |   Output:\n    |   |   Original string: ' 25p14n33i\\68c\\75x36s\\\$(84d160s90p\\\$((20m+33i+\$RANDOM%12y65o)));\\252d105u\\320v85m162y133r\\\\\$340k\\|\\546j242v\\\\\"\\138t\"\\\\\"\\\\\";\\432h175c156g540h;\\560x145o270d217j\\\"\";] '\n    |   |   Decrypted text: ' for a in \$(seq \$((2+3+\$RANDOM%15))); do echo \$a | tr \"\\\n\" \" \"; done; echo \"\"; '\n"

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
