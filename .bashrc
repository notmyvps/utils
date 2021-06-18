# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "`dircolors`"
# alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
alias fastping='ping -c 100 -i 0.2'
alias ports='netstat -tulanp'
alias usage='sudo ifconfig venet0 | grep 'bytes''
alias connections='sudo lsof -n -P -i +c 15'
alias fwports='sudo ufw status numbered'
alias update='sudo apt-get update && sudo apt-get upgrade'
alias searxrestart='sudo -H service uwsgi restart searx && service apache2 restart'
alias apachereload='sudo service apache2 reload'
alias ll='ls -l'
alias sl='ls'
alias meminfo='free -m -l -t'
alias s='less'
alias untar='tar -zxvf'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

## Profile updates
alias reload="source ~/.bash_profile"