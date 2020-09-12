# WaitWhatCrypt v1.0
WaitWhatCrypt, for while, is just a test text crypter, coded in Shell Script.

## Change Log:
* **Decrypt function added**
* Encrypt and decrypt functions now are separated modules from WWC kernel, located in `.wwc-core` folder
* README.md updated

---

## Downloading:
To download this repo, you must have Git installed. If you don't have it,
> and you use an Arch-based distro, install Git typing:
```bash
sudo pacman -S git
```

> and you use a Debian-based distro, install Git typing:
```bash
sudo apt-get install git -y
```

> and you use a Red Hat-based distro, install Git typing:
```bash
sudo yum install git -y
```


> and you use a Termux, install Git typing:
```bash
pkg install git -y
```

If you already have Git, you can download this repo typing:
```bash
git clone https://github.com/sidneypepo/waitwhatcrypt
```

## First execution:
To run it, first you must give it execute permission. To give this permission, go to repo folder and type:
```bash 
chmod +x waitwhatcrypt.sh
```

After gave execute permission, you can run it typing:
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

* **INFO 1:** Blank spaces are represented by a backslash (`\`) and final return key are represented by a square bracket (`]`), so be careful at using them in your text!
* **·INFO 1.1:** Decrypt function is almost perfect, but, at least for now, it destroy any backslash (`\`), square bracket (`]`) or numbers in your text, so be careful at using backslashes, square brackets and numbers in your text! (See Decrypt example 2 to a better understanding).
* **INFO 2:** To use special characters/commands in your text, like `\`, `$`, `"` or `\n`, you must add `\` (backslash(es)) BEFORE it! (See Encrypt example 2 to a better understanding).
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

    * [Decrypt] #1
        > Input:
        ```bash
        ./waitwhatcrypt.sh -d "25h...\\24y21d20a75g120s182p112r]"
        ```
        
        > Output:
        ```bash
        Original string: ' 25h...\24y21d20a75g120s182p112r] '
        Decrypted text: ' f... society '
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

    * [Decrypt] #2
        > Input:
        ```bash
        ./waitwhatcrypt.sh -d "25e14d33s\\68u\\75l36p\\\\\$(84k160b90s\\\\\$((20s+33v+\$RANDOM%12y65h)));\\252m105k\\320e85d162j133c\\\\\$340m\\|\\546s242o\\\"\\\138l\"\\\"\\\";\\432r175o156m540r;\\560o145g270z217p\\\"\";]"
        ```
            
        > Output:
        ```bash
        Original string: ' 25p14n33i\68c\75x36s\$(84d160s90p\$((20m+33i+$RANDOM%12y65o)));\252d105u\320v85m162y133r\$340k\|\546j242v\"\138t"\"\";\432h175c156g540h;\560x145o270d217j\"";] '
        Decrypted text: ' for a in  $(seq  $((x+v+$RANDOM%kc))); do echo  $a | tr "  n" " "; done; echo ""; '
        ```
