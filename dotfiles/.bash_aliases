alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias fullupdate='sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y && cinnamon-spice-updater --update-all'
alias netchange='result=$(nmcli dev | grep "ethernet" | grep -w "connected"); if [ -n "$result" ]; then nmcli radio wifi off; else nmcli radio wifi on; fi'

alias screenfix3='{$HOME}/.screenlayout/laptop.sh && sleep 2 && {$HOME}/.screenlayout/screens.sh'

alias sorthistory="tac {$HOME}/.bash_history | grep -v sorthistory | awk '!seen[\$0]++' | tac > {$HOME}/.bash_history.sort && cp {$HOME}/.bash_history.sort {$HOME}/.bash_history && rm {$HOME}/.bash_history.sort"


alias proxymanual="gsettings set org.gnome.system.proxy mode 'manual'"
alias proxyauto="gsettings set org.gnome.system.proxy mode 'auto'"
alias proxynone="gsettings set org.gnome.system.proxy mode 'none'"

alias copy="xclip -sel clip"
alias paste="xclip -sel clip -o"

unsudo() {

  sed -i '$ d' ~/.bash_history

  if [ "sudo" = "$1" ]; then
    history -s ${@:2}
    eval "${@:2}"
  else
    history -s ${@}
    eval ${@}
  fi
}
