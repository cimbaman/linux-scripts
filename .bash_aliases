alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias fullupdate='sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y'
alias netchange='result=$(nmcli dev | grep "ethernet" | grep -w "connected"); if [ -n "$result" ]; then nmcli radio wifi off; else nmcli radio wifi on; fi'

alias screenfix3='/home/cimbaman/.screenlayout/laptop.sh && sleep 2 && /home/cimbaman/.screenlayout/screens.sh'

alias sorthistory="tac /home/cimbaman/.bash_history | grep -v sorthistory | awk '!seen[\$0]++' | tac > /home/cimbaman/.bash_history.sort && cp /home/cimbaman/.bash_history.sort /home/cimbaman/.bash_history && rm /home/cimbaman/.bash_history.sort"


alias proxymanual="gsettings set org.gnome.system.proxy mode 'manual'"
alias proxyauto="gsettings set org.gnome.system.proxy mode 'auto'"
alias proxynone="gsettings set org.gnome.system.proxy mode 'none'"
