
#alias grep='grep --color=auto'
#alias fgrep='fgrep --color=auto'
#alias egrep='egrep --color=auto'

#alias sl='ls --color=auto -A'

# -------------------------------------
#		Listing
# -------------------------------------
alias ls='ls -G'
alias l='ls'
alias la="ls -A"       # List including dotfiles
alias ll="ls -lA"
alias ld="ls -d */"   # List only directories

# -------------------------------------
#	   Changing Directories
# -------------------------------------
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias v="vim"
alias vi="vim"

alias c='clear'

# making the python 3 the default interpreter.
alias python=python3

alias ipy=ipython        # quicker access to ipython
alias deac='deactivate'  # for virtual environments
alias ':q'='exit'

#alias untar.xz="tar xpvf"
#alias smalltree='tree -L 2'
#Directory for jupyter $(jupyter --data-dir)

# Store the current Work Dir
alias wd='cd ~/repos/LifeBud_v2.0'
export WD='~/repos/LifeBud_v2.0'

alias reset='source ~/.profile'

# ------------------------------------------------
#                GitHub
# ------------------------------------------------

# Quick git push 
alias qpush='git add --all && git commit -m "-" && git push'


# TMUX
alias mux='tmux'
alias lmux='tmux ls'
alias lpmux='tmux list-panes -a'
alias newmux='tmux new-session -n Newmux'
#alias muxv= 'tmux split-window -h'
alias kmux='tmux kill-pane -t '
alias smux='tmux send-keys -t '
alias ipy='ipython'
