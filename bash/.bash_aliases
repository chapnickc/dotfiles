alias reset='. ~/.profile'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias c='clear'
alias q='exit'

alias ls='ls -G'
alias l='ls'
alias la="ls -A"
alias ll="ls -1"
alias ld="ls -d */"

alias t='tree -C'
alias tt='tree -L 2'
alias ta='tree  -L 3'
alias lt='tree -C -L 1'



#   Vim 
alias vim="mvim -v"
alias vi="vim"
alias bim="vim"
alias v='vim'

#   Tmux
alias tm='tmux'

#   Python  
#alias python="/usr/local/bin/python3.6"
#alias pip="/usr/local/bin/pip3"
alias ipy="ipython"
alias bycache="if [ -e ./__pycache__ ]; then rm -rf ./__pycache__; fi"


#   MATLAB     
alias matlab='/Applications/MATLAB_R2016b.app/bin/matlab -nodesktop' 


#   GitHub 
alias qpush='git add --all && git commit -m "-" && git push'
alias gb="git branch"
alias gs="git status"
alias wimi='ipconfig getifaddr en0'
alias deac='source deactivate';
alias sact='source activate'
alias dynamodb-local='java -Djava.library.path=~/dynamodb_local_latest/DynamoDBLocal_lib -jar ~/dynamodb_local_latest/DynamoDBLocal.jar -sharedDb'
