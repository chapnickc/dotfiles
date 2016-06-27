
# -------------------------------------
#              Dynamic 
# -------------------------------------
alias wd='cd ~/repos/LifeBud_v2.0'
alias gd='cd ~/Google\ Drive/MEDIC\ Lab\ Projects/In-Ear\ Health\ Monitoring\ Device'

# -------------------------------------
#	        General
# -------------------------------------
alias ls='ls -G'
alias l='ls'
alias la="ls -A"       # List including dotfiles
alias ll="ls -lA"
alias ld="ls -d */"   # List only directories

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias c='clear'
alias reset='source ~/.profile'


# -------------------------------------
#		        Vim
# -------------------------------------
alias vim='/usr/local/Cellar/vim/7.4.1952/bin/vim'
alias v="vim"
alias vi="vim"

# ------------------------------------------------
#                GitHub
# ------------------------------------------------
# Quick git push 
alias qpush='git add --all && git commit -m "-" && git push'


# -------------------------------------
#	          Python
# -------------------------------------
# making the python 3 the default interpreter.
alias python=python3
alias ipy=ipython        # quicker access to ipython

alias deac='deactivate'  # for virtual environments
alias ':q'='exit'

# -------------------------------------
#	           Tmux
# -------------------------------------
alias mux='tmux'
alias lmux='tmux ls'
alias lpmux='tmux list-panes -a'
alias newmux='tmux new-session -n Newmux'
#alias muxv= 'tmux split-window -h'
alias kmux='tmux kill-pane -t '
alias smux='tmux send-keys -t '



