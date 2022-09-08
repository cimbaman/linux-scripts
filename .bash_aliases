alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias fullupdate='sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y'
alias netchange='result=$(nmcli dev | grep "ethernet" | grep -w "connected"); if [ -n "$result" ]; then nmcli radio wifi off; else nmcli radio wifi on; fi'

