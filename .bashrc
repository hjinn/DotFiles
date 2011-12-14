
# Check for an interactive session
[ -z "$PS1" ] && return

export PATH=$PATH:~/Job/scripts/:/usr/local/bin/
export EDITOR=emacs
export SVN_EDITOR=vim
export VISUAL=emacsclient

alias ls='ls -p --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias i3lock='i3lock -c 000000'
PS1='[\u@\h \W]\$ '
