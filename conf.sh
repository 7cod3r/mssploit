#!/bin/bash
# Author: He4LAN

clear
termux-setup-storage > /dev/null 2>&1 &

banner(){ 
    echo -e "
                                        
     \e[32m_____     ___\e[0m    \e[31m_____       _         \e[0m
    \e[32m|  |  |___| | |\e[0m  \e[31m|     |___ _| |___ ___ \e[0m
    \e[32m|     | -_|_  |\e[0m  \e[31m|   --| . | . | -_|  _|\e[0m
    \e[32m|__|__|___| |_|\e[0m  \e[31m|_____|___|___|___|_|  \e[0m
  
    
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
        cp -r mssploit /data/data/com.termux/files/usr/bin && chmod 777 mssploit && cd && rm -rf mssploit && mssploit

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
        cp -r mssploit /data/data/com.termux/files/usr/bin && chmod 777 mssploit && cd && rm -rf mssploit && mssploit

    else
        echo -e " \e[31m Hatalı seçim! "
        sleep 1
        clear
        bash conf.sh
    fi