# -------------------------------------
# set python3 as default
alias reset='. ~/.profile'

#              Dynamic 
# -------------------------------------
alias gd='cd ~/Google\ Drive/Spring2017'
alias em='cd ~/Google\ Drive/MEDIC\ Lab\ Projects/Epilepsy\ Monitoring'

# ----------- General --------------
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias c='clear'
alias q='exit'

alias ls='ls -G'
alias l='ls'
alias la="ls -A"       # List including dotfiles
alias ll="ls -1"
alias ld="ls -d */"   # List only directories

alias t='tree'
alias tt='tree -L 2'
alias ta='tree  -L 3'
alias lt='tree -C -L 1'



#   Tools
alias vim="mvim -v"
alias vi="vim"
alias bim="vim"
alias v='vim'

alias tm='tmux'
#alias tm='tmux new-session -s main'
#alias tattach='tmux new-session -t main -s right\; new-window\; split-window -h'

#   Python  
#alias python="/usr/local/bin/python3"
alias ipy='ipython'         # quicker access to ipython
#alias ipython='/Users/chapnickc_slu/anaconda3/envs/py36/bin/ipython'


#   MATLAB     
alias matlab='/Applications/MATLAB_R2016b.app/bin/matlab -nodesktop' 

#   GitHub 
alias qpush='git add --all && git commit -m "-" && git push'
alias gb="git branch"
alias gs="git status"

alias wip='ipconfig getifaddr en0'

alias py36='source activate py36'
alias deac='source deactivate';
alias sact='source activate'


alias bycache="if [ -e ./__pycache__ ]; then rm -rf ./__pycache__; fi"
#alias rm='mv trash'

alias wd='cd /Users/chapnickc_slu/ML/models/tutorials/rnn/translate'


