# General
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias q='exit'
alias c='clear'
alias l='ls'
alias la="ls -A"
alias ld="ls -d */"
if [[ "$OSTYPE" == "darwin"* ]]; then
    alias ls='ls -G' #'ls --color=auto'
else
    alias ls='--color=auto' #'ls --color=auto'
fi

#   Vim 
if [[ "$OSTYPE" == "darwin"* ]]; then
    alias vim="mvim -v"
    alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'
fi
alias vi="vim"
alias v='vim'
alias bim="vim"

#   Tmux
alias tm='tmux'

#   Python  
alias ipy='ipython' #python3 -m IPython
alias python='python3'
alias deac='deactivate'

#   GitHub 
alias gs="git status"
alias gg='git log --graph --decorate --format=medium'

alias pish='ssh pi@192.168.0.16'
alias journal='vim ~/.journal/$(date +"%y-%m-%d")'
