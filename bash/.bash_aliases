# -------------------------------------
#              Dynamic 
# -------------------------------------
alias ls='ls --color=auto'
alias l='ls'
alias la="ls -a"       # List including dotfiles
alias ll="ls -1"
alias ld="ls -d */"   # List only directories

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias c='clear'
alias reset='source ~/.profile'

alias 'q'='exit'

#alias nmap='/usr/local/Cellar/nmap/7.12/bin/nmap'

# -------------------------------------
#		        Vim
# -------------------------------------
alias v="vim"
alias vi="vim"

# ------------------------------------------------
#                GitHub
# ------------------------------------------------
alias qpush='git add --all && git commit -m "-" && git push'
alias gb="git branch"
alias gs="git status"



# -------------------------------------
#	          Python
# -------------------------------------
# making the python 3 the default interpreter.
#alias python=python3
alias ipy=ipython        # quicker access to ipython
alias deac='deactivate'  # for virtual environments


# -------------------------------------
#	           Tmux
# -------------------------------------
alias mux='tmux'

