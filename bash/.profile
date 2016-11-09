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



# -------------------------------
#            Python
# -------------------------------
export PYTHONIOENCODING='UTF-8'


# -------------------------------
#           Themes
# -------------------------------

# simplified color names for easy access
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

# UTF-8 characters
sq_infin='⋊'
stopper='∆'
end='\[\e[0m\]'                 # Text Reset

# ----------------------------------------
#               Setup Prompt
# ----------------------------------------
prompt_command () {

	case $PWD in
		${HOME}) current_dir="~";;
		${HOME}/*/*) current_dir='$(basename "$(dirname "$PWD")")/$(basename "$PWD")';;
		${HOME}/*) current_dir='~/$(basename "$PWD")';;
		*) current_dir="$PWD";;
	esac

    export PS1="${pink}< ${royalBlue}\u@\h: ${springGreen}${current_dir}${pink} >${end} "
}

PROMPT_COMMAND=prompt_command

