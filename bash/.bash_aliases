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
#alias python=python3
#alias ipy="python3 -m IPython"
alias ipy="ipython"


#   MATLAB     
alias matlab='/Applications/MATLAB_R2016b.app/bin/matlab -nodesktop' 


#   GitHub 
alias qpush='git add --all && git commit -m "-" && git push'
alias gb="git branch"
alias gs="git status"
alias wimi='ipconfig getifaddr en0'
alias deac='deactivate'
alias sact='source activate'
alias dynamodb-local='java -Djava.library.path=~/dynamodb_local_latest/DynamoDBLocal_lib -jar ~/dynamodb_local_latest/DynamoDBLocal.jar -sharedDb'
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'

alias pup='pip install . --upgrade'
alias activate='source env/bin/activate'
alias idtoken="cat ~/.nexus/tokens | head -n 1 | cut -f 2 -d '='"
alias dockersh='docker run --entrypoint /bin/bash -ti '
alias dockersh2='docker run --entrypoint /bin/sh -ti'
alias dockerb='docker build . -t '
alias gg='git log --graph --decorate  --format=medium'

alias python='python3'
