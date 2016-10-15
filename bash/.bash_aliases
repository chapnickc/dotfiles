# -------------------------------------
#              Dynamic 
# -------------------------------------
alias gd='cd ~/Google\ Drive/Fall2016/'
alias em='cd ~/Google\ Drive/MEDIC\ Lab\ Projects/Epilepsy\ Monitoring'

#git ls-files src/ tools/config/ tools/serial_read/ lib/MAX30100/ lib/TMP006/ | xargs wc -l



# -------------------------------------
#	        General
# -------------------------------------
alias ls='ls -G'
alias l='ls'
alias la="ls -A"       # List including dotfiles
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
alias python="python3"
alias ipy=ipython        # quicker access to ipython
alias deac='deactivate'  # for virtual environments


# -------------------------------------
#	           Tmux
# -------------------------------------
alias mux='tmux'
alias t='tmux'
#alias lmux='tmux ls'
#alias lpmux='tmux list-panes -a'
#alias newmux='tmux new-session -n Newmux'
##alias muxv= 'tmux split-window -h'
#alias kmux='tmux kill-pane -t '
#alias smux='tmux send-keys -t '




# -------------------------------------
#	           MATLAB
# -------------------------------------
alias matlab='/Applications/MATLAB_R2016a.app/bin/matlab -nodesktop' 


