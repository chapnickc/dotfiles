#!/bin/bash
bindkey -v              # enable vi commands in bash 


export CLICOLOR="YES"
export EDITOR='vim' 
export LANGUAGE=en_US.UTF-8
#export LSCOLORS=Exfxcxdxbxegedabagacad
#export TERM=screen-256color # xterm-256color

export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:/Users/chapnickc_slu/node_modules/chromedriver/lib/chromedriver"





files=( ".bash_aliases"  ".git-completion.bash"  "dotfiles/lscolor/zeno.sh" )
for file in ${files[*]}; do  
	if [[ -e "$HOME"/"$file" ]]; then 
        source "$HOME"/"$file"
    fi
done


# --------------------
#       Themes
# --------------------
# UTF-8 Characters
arrow='➯ '
sq_infin='⋊'

# ANSI Color Codes
pink='\[\e[1;38;5;200m\]'
bldOrange='\[\e[38;5;202m\]'
springGreen='\[\e[1;38;5;48m\]'
royalBlue='\[\e[38;5;69m\]'
white='\[\e[37m\]'
reset='\[\e[0m\]' 


# Setup the normal PS1 here
# http://brettterpstra.com/2009/11/17/my-new-favorite-bash-prompt/
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
	export PS1="${venv}${bldOrange}[ ${springGreen}\u: ${royalBlue}${current_dir}${bldOrange} ]${pink}${sq_infin} ${reset}"
}

PROMPT_COMMAND=prompt_command

if [[ -e ~/.rpirc ]]; then source ~/.rpirc; fi

#source $HOME/anaconda3/bin/aws_zsh_completer.sh
