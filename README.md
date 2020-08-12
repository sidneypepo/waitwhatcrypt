# waitwhatcrypt
WaitWhatCrypt, for while, is just a test text crypter, coded in Shell Script.

# **IMPORTANT:**
This release (BETA v0.5), **DOESN'T** has the decrypt function. It will be added in next release (v1.0).

---

## First execution:
To run it, first you must give it permissions.

* To give permissions, open a terminal in the file folder and type:
```bash 
chmod +x waitwhatcrypt.sh
```

* After gave execute permission, you can run it typing:
```bash
./waitwhatcrypt.sh
```

---

## How to use this script:
```
 _       __      _ __ _       ____          __  ______                 __
| |     / /___ _(_) /| |     / / /_  ____ _/ /_/ ____/______  ______  / /_
| | /| / / __ '/ / /_/ | /| / / __ \/ __ '/ __/ /   / ___/ / / / __ \/ __/
| |/ |/ / /_/ / / /_ | |/ |/ / / / / /_/ / /_/ /___/ /  / /_/ / /_/ / /_
|__/|__/\__,_/_/\__/ |__/|__/_/ /_/\__,_/\__/\____/_/   \__, / .___/\__/
────────────────────────── 「C0d3d by sysb1n 」────────/____/_/──────────
```

* Basic usage: `./waitwhatcrypt.sh [OPTION] "your text"`

* Options:
    > -h -> Use the flag '-h' to show this help menu. You can also use flags 'h', '--help', 'help' or just nothing to see this menu.  
    > -e -> Use the flag '-e' to encrypt your text. You can also use flags 'e', '--encrypt' or 'encrypt' to use the encrypt function.  
    > -d -> Use the flag '-d' to decrypt your text. You can also use flags 'd', '--decrypt' or 'decrypt' to use the decrypt function.  

* **INFO 1:** Blank spaces are represented by a backslash (' \ ') and final return key are represented by a square bracket (']'), so be careful at using backslashes and square brackets in your text!  
* **INFO 2:** To use special characters/commands in your text, like ' \ ', ' $ ', ' " ' or ' \n ', you must add ' \ ' (backslash(es)) BEFORE it! (See Encrypt example 2 to a better understanding).  
* **INFO 3:** At least for while, this script CAN NOT encrypt capital letters!  

* Usage examples:  
    * [Encrypt] #1  
        > Input:  
        ```bash
        ./waitwhatcrypt.sh -e "f... society"  
        ```
        
        > Output:  
        ```bash
        Original text: ' f... society '  
        Encrypted string: ' 25h...\24y21d20a75g120s182p112r] '
        ```  

    * [Encrypt] #2  
        > Input:  
        ```bash
        ./waitwhatcrypt.sh -e "for a in \$(seq \$((2+3+\$RANDOM%15))); do echo \$a | tr \"\\\n\" \" \"; done; echo \"\";"  
        ```
            
        > Output:  
        ```bash
        Original text: ' for a in $(seq $((2+3+$RANDOM%15))); do echo $a | tr "\n" " "; done; echo ""; '  
        Encrypted string: ' 25p14n33i\68c\75x36s\$(84d160s90p\$((20m+33i+$RANDOM%12y65o)));\252d105u\320v85m162y133r\$340k\|\546j242v\"\138t"\"\";\432h175c156g540h;\560x145o270d217j\"";] '  
        ```
