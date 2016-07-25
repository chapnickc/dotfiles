# -------------------------------------
#              Dynamic 
# -------------------------------------
alias wd='cd ~/repos/LifeBud_v2.0'
alias gd='cd ~/Google\ Drive/MEDIC\ Lab\ Projects/In-Ear\ Health\ Monitoring\ Device'

# -------------------------------------
#          Raspberry Pi
# -------------------------------------
alias goPi="ssh pi@192.168.1.219"
alias goPiSLU="ssh pi@165.134.10.30"

alias goTuring="ssh chapnickc@turing.slu.edu"


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
#alias vim='/usr/local/Cellar/vim/7.4.1952/bin/vim'
alias vim='mvim -v'
alias v="vim"
alias vi="vim"

# ------------------------------------------------
#                GitHub
# ------------------------------------------------
# Quick git push 
alias qpush='git add --all && git commit -m "-" && git push'

alias gchk='git checkout'


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



alias matlab='/Applications/MATLAB_R2016a.app/bin/matlab'


alias unziptargz='tar -xvzf'
alias nmap='/usr/local/Cellar/nmap/7.12/bin/nmap'

alias gb="git branch"
alias gs="git status"
