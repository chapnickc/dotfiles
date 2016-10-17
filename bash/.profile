# -------------------------------
#            General
# -------------------------------
export PATH="/usr/local/bin:$PATH"
export EDITOR='vim'                             # Make vim the default editor.
export TERM=xterm-256color
export LC_ALL=en_US.UTF-8                       # Prefer US English and use UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

set -o vi                                       # enable vi commands in bash 
shopt -s checkwinsize                           # check window size after commands, update line/col values accordingly
shopt -s cdspell                                # Autocorrect typos in path names when using `cd`
shopt -s extglob                                # using for rm !(filename)

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

# iTerm2 Integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"



# -------------------------------
#            Python
# -------------------------------
export PYTHONIOENCODING='UTF-8'
export WORKON_HOME="~/.virtualenvs"
. "/usr/local/bin/virtualenvwrapper.sh"


# -------------------------------
#           Themes
# -------------------------------
# http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
# silently set the theme for vim and iTerm2
theme monokai; clear; #materia;  #solar-flare; 

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

# ➠  ⫥ ⨂ ⧕ ⧕
arrow2='⇲' 
option='⎇ ⌥ '
arrow='➯ '
wave='⏦'
sq_infin='⋊'    #⧕
sum='∑'
end='\[\e[0m\]'                 # Text Reset
stopper='⋊'


# http://brettterpstra.com/2009/11/17/my-new-favorite-bash-prompt/
# Setup the normal PS1 here
prompt_command () {
	case $PWD in
		${HOME}) current_dir="~";;
		${HOME}/*/*) current_dir='$(basename "$(dirname "$PWD")")/$(basename "$PWD")';;
		${HOME}/*) current_dir='~/$(basename "$PWD")';;
		*) current_dir="$PWD";;
	esac

    # Get current virtual environment
    if [[ $VIRTUAL_ENV != "" ]] 
    then
        # Strip out the path and just leave the env name
        venv="${white}(${VIRTUAL_ENV##*/})"
    else
        venv=''
    fi

    export PS1="${venv}${springGreen}[ ${bldOrange}\u: ${royalBlue}${current_dir}${springGreen} ]${pink}${stopper} ${end}"
}

PROMPT_COMMAND=prompt_command

