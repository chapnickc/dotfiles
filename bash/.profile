#!/bin/bash

export PATH="/usr/local/bin:$PATH"

# added by Anaconda3 4.3.0 installer
export PATH="/Users/chapnickc_slu/anaconda3/bin:$PATH"
export PATH="$PATH:/Users/chapnickc_slu/node_modules/chromedriver/lib/chromedriver"
export PATH="$PATH:~/repos/MEDIC/Epilepsy-Monitor-FW/tools/arm/gcc-arm-none-eabi-4_9-2015q3/bin"
#export PATH="~/anaconda/envs/python3/bin:$PATH"

export EDITOR='vim' 
#export TERM=xterm-256color
export TERM=screen-256color
export LANGUAGE=en_US.UTF-8
export CLICOLOR="YES"
export LSCOLORS=Exfxcxdxbxegedabagacad

export GITURL="https://github.com/chapnickc"


#http://linux-sxs.org/housekeeping/lscolors.html
#ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
# brew install coreutils
#sudo chown -R "$USER":admin /usr/local
#sudo chown -R "$USER":admin /Library/Caches/Homebrew


# setup for nrf52 development using GCC ARM 

export PATH="$HOME/repos/LifeBud-Firmware/tools/nRF5x-Command-Line-Tools_9_2_1_OSX/nrfjprog:$PATH"

export PATH="/Users/chapnickc_slu/anaconda3/bin:$PATH" # Anaconda3 4.2.0 (installer)
export PYTHONIOENCODING='UTF-8'
VIRTUALENVWRAPPER_PYTHON="/Users/chapnickc_slu/anaconda3/bin/python"
export WORKON_HOME="~/.virtualenvs"
if [ -f "/usr/local/bin/virtualenvwrapper.sh" ]; then
	. /usr/local/bin/virtualenvwrapper.sh
fi

if [ -f "$HOME/.arduinomkrc" ]; then . $HOME/.arduinomkrc; fi



#set -o vi                                       # enable vi commands in bash 
bindkey -v
#shopt -s checkwinsize   # check window size after commands, update line/col values accordingly
#shopt -s cdspell        # Autocorrect typos in path names when using `cd`
#shopt -s extglob        # using for rm !(filename)



# iTerm2 Integration
test -e "${HOME}/.iterm2_shell_integration.bash" && \
	source "${HOME}/.iterm2_shell_integration.bash"

files=( ".bash_aliases"  ".git-completion.bash"  "dotfiles/lscolor/zeno.sh" )
for f in ${files[*]}; do  
	if [[ -e $HOME/$f ]]; then . $HOME/$f; fi
done

# -------------------------------
#           Themes
# -------------------------------
# http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html
# simplified color names for easy access
# http://unix.stackexchange.com/questions/124407/what-color-codes-can-i-use-in-my-ps1-prompt
# http://ascii-table.com/ansi-escape-sequences.php
white='\[\e[37m\]'
purple='\[\e[35m\]'
bldgrn='\[\e[1;32m\]' # Green
bldylw='\[\e[1;33m\]' # Yellow
bldblu='\[\e[1;34m\]' # Blue
bldpur='\[\e[1;35m\]' # Purple
bldcyn='\[\e[1;36m\]' # Cyan
lightblue='\[\e[1;94m\]' 

# ANSI codes
royalBlue='\[\e[38;5;69m\]'
springGreen='\[\e[1;38;5;48m\]'
bldOrange='\[\e[38;5;202m\]'
pink='\[\e[1;38;5;200m\]'
option='⎇ ⌥ '


# UTF-8 Characters
arrow='➯ '
arrow2='⇲'
wave='⏦'
sq_infin='⋊'
sum='∑'
end='\[\e[0m\]'                 # Text Reset


# http://brettterpstra.com/2009/11/17/my-new-favorite-bash-prompt/
# Setup the normal PS1 here
prompt_command () {
	case $PWD in
		${HOME}) current_dir="~";;
		${HOME}/*/*) current_dir='$(basename "$(dirname "$PWD")")/$(basename "$PWD")';;
		${HOME}/*) current_dir='~/$(basename "$PWD")';;
		*) current_dir="$PWD";;
	esac

	# Get the name of current virtual environment  (the regex strips absolute path)
	if [[ $VIRTUAL_ENV != "" ]]; then
		venv="${white}(${VIRTUAL_ENV##*/})"    
	else
		venv=''
	fi

	export PS1="${venv}${bldOrange}[ ${springGreen}\u: ${royalBlue}${current_dir}${bldOrange} ]${pink}${sq_infin} ${end}"
}

PROMPT_COMMAND=prompt_command
#ssh pi@10.178.32.43
#source activate py36

if [[ -e ~/.rpirc ]]; then source ~/.rpirc; fi
export PYTHONPATH=$PYTHONPATH:$PWD
export PYTHONPATH=$PYTHONPATH:$PWD

#
export FLASK_APP=/Users/chapnickc_slu/chadchapnick.xyz/autoapp.py
export FLASK_DEBUG=1

#foreground: #8ae234
source $HOME/anaconda3/bin/aws_zsh_completer.sh
