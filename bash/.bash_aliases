# -------------------------------------
# set python3 as default

#              Dynamic 
# -------------------------------------
alias gd='cd ~/Google\ Drive/Spring2017'
alias em='cd ~/Google\ Drive/MEDIC\ Lab\ Projects/Epilepsy\ Monitoring'

# ----------- General --------------
alias c='clear'
alias reset='. ~/.profile'
alias q='exit'

alias ls='ls -G'
alias l='ls'
alias t='tree -C -L 1'

alias la="ls -A"       # List including dotfiles
alias ll="ls -1"
alias ld="ls -d */"   # List only directories

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

#   Tools
alias v="vim"
alias vi="vim"
alias bim="vim"

alias tm='tmux'
#alias tm='tmux new-session -s main'
#alias tattach='tmux new-session -t main -s right\; new-window\; split-window -h'

#   Python  
alias python="/usr/local/bin/python3"
#alias ipython='/Users/chapnickc_slu/anaconda3/envs/py36/bin/ipython'
alias ipy='ipython'         # quicker access to ipython


#   MATLAB     
alias matlab='/Applications/MATLAB_R2016a.app/bin/matlab -nodesktop' 

#   GitHub 
alias qpush='git add --all && git commit -m "-" && git push'
alias gb="git branch"
alias gs="git status"

alias wip='ipconfig getifaddr en0'
alias tt='tree -L 2'
alias ta='tree  -L 3'
alias v='mvim -v'

alias py36='source activate py36'
alias deac='source deactivate';
alias sact='source activate'


alias bychache='find . -name __pycache__ -exec chflags hidden {} \;'
