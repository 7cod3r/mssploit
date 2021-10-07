#!/bin/bash
# Author: Rooj

clear
termux-setup-storage > /dev/null 2>&1 &

banner(){ 
    echo -e "
   
    \e[32m██████╗  ██████╗  ██████╗      ██╗\e[0m    \e[31m ██████╗ ███████╗███████╗██╗ ██████╗██╗ █████╗ ██╗     \e[0m
    \e[32m██╔══██╗██╔═══██╗██╔═══██╗     ██║\e[0m    \e[31m██╔═══██╗██╔════╝██╔════╝██║██╔════╝██║██╔══██╗██║     \e[0m
    \e[32m██████╔╝██║   ██║██║   ██║     ██║\e[0m    \e[31m██║   ██║█████╗  █████╗  ██║██║     ██║███████║██║     \e[0m
    \e[32m██╔══██╗██║   ██║██║   ██║██   ██║\e[0m    \e[31m██║   ██║██╔══╝  ██╔══╝  ██║██║     ██║██╔══██║██║     \e[0m
    \e[32m██║  ██║╚██████╔╝╚██████╔╝╚█████╔╝\e[0m    \e[31m╚██████╔╝██║     ██║     ██║╚██████╗██║██║  ██║███████╗\e[0m
    \e[32m╚═╝  ╚═╝ ╚═════╝  ╚═════╝  ╚════╝\e[0m     \e[31m ╚═════╝ ╚═╝     ╚═╝     ╚═╝ ╚═════╝╚═╝╚═╝  ╚═╝╚══════╝\e[0m
                                                                                             

"
echo -e "  \e[32mBU PROGRAM SADECE TERMUXTA ÇALIŞMAKTADIR..."

}
banner

			    echo "
                 
                  "
		    	echo -e "  \e[32m[\033[31m?\e[32m]\e[0m Metasploit Kurulu mu? [Y/n]
 
                    "
			    read -p $'                   >\033[31m ' rooj
    if [[ $rooj == y ||  $rooj == Y  ]]; then
        sleep 2
        chmod 777 conf
        chmod 777 mssploit
        cp -r mssploit /data/data/com.termux/files/usr/bin && cd $HOME && mssploit

    elif [[ $rooj == N ||  $rooj == n  ]]; then
        clear
        echo -e " \e[33mKurulum yaklaşık 10 20 dk sürebilir..."
        sleep 1
        echo ""
        echo -e " \e[31mKurulum tahminen 500 MB dır, Ve Terminalinizin görünümü değişebilir."
        echo ""
        sleep 1
        echo -e " \e[33mKurulum Başlıyor...\e[31m"
        echo ""
        sleep 2
        pkg install git curl wget nmap -y && wget https://github.com/Hax4us/TermuxBlack/raw/master/install.sh && chmod +x install.sh && ./install.sh -i && pkg install ruby2 && wget https://raw.githubusercontent.com/Hax4us/Metasploit_termux/master/metasploit.sh && chmod +x metasploit.sh && ./metasploit.sh
        chmod 777 conf
        chmod 777 mssploit
        cp -r mssploit /data/data/com.termux/files/usr/bin && cd $HOME && mssploit

    else
        echo -e " \e[31m Hatalı seçim! "
        sleep 1
        clear
        ./conf
    fi
