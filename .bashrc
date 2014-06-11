#
# ~/.bashrc
#

export PATH+=:~/bin/

#colors
RED='\e[1;31m'
GREEN='\e[1;32m'
YELLOW='\e[1;33m'
BLUE='\e[1;34m'
NULL='\e[m'

PS1="[\[$RED\]\W>\[$NULL\]] "

#ls alias
#alias dir='dir --color=auto'
#alias ls='ls --color=auto'
alias ll='ls -lt'
alias lx='ls -X'
alias cls='clear;ls'
alias rls='reset;ls'
alias cl='clear'
alias lal='ls -la'

#data moving
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

#information
alias du='du -h'
alias pcinfo='clear;date;echo;cal;
              echo -e 
"$BLUE"------------------------------------------------------$NULL;
              df -h; 
              echo -e 
"$BLUE"-------------------------------------------------------------------------$NULL;
              free;
              echo -e 
"$BLUE"-------------------------------------------------------------$NULL;
              w;
              echo -e "$BLUE"---------------------------$NULL;
              ps;
              echo -e 
"$BLUE"-------------------------------------------------------------------------------------$NULL;
              dmesg | tail -n 6'

#grep
#alias grep='grep --color=auto -i'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias psg='ps aux | grep'

#ssh
alias cs='ssh -i $HOME/.ssh/school sturner@login.cs.nmt.edu'
alias tcc='ssh -i $HOME/.ssh/school -X sturner@login64.nmt.edu' 
alias tccr='ssh -i$HOME/.ssh/school sturner@rainbow.nmt.edu'

#archives
alias tarball='tar -czvf'
alias untar='tar -xzvf'

#umask set rxw-----
umask 0077

#misc
[ -f /etc/bash_completion ] && . /etc/bash_completion
[ -f /etc/bash_completion.d/pacman ] && . /etc/bash_completion.d/pacman
alias src='source $HOME/.bash_profile && source $HOME/.bashrc'
#alias keybase-installer='keybase-installer --prefix $HOME/local'

alias bye='exit'
