# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export LS_OPTIONS='--color=auto'
alias ls='ls -Ghaf'

alias ll='ls -l' 

export PS1="\[\033[1;35m\]\u \[\033[1;34m\]/\W:\[\033[0m\]"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
