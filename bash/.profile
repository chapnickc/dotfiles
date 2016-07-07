
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.git-completion.bash ]; then
      . ~/.git-completion.bash
fi

export PATH="/usr/local/bin:$PATH"

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

shopt -s cdspell # Autocorrect typos in path names when using `cd`
shopt -s extglob # using for rm !(filename)


set -o vi  # enable vi commands in bash 


# -------------------------------
#            Exports
# -------------------------------
# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

export EDITOR='vim'                 # Make vim the default editor.

export LC_ALL=en_US.UTF-8           # Prefer US English and use UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
export PYTHONIOENCODING='UTF-8'

# use any key to get things flowing again
stty ixany


# simplified color names for easy access
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
lightblue='\e[1;94m' #light blue
royal_blue='\e[38;5;69m'
txtrst='\e[0m'    # Text Reset

# Setup the normal PS1 here
PS1="\[$bldgrn\][\[$txtrst\] \[$bldpur\]\u: \[$royal_blue\]\W \[$txtrst\]\[$bldgrn\]]\[$txtrst\] \[$bldylw\]➯ \[$txtrst\] "


LS_COLORS="di=1;96:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90"
export LS_COLORS

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# ----------------------
#       SLIMUX
# ----------------------
export EVENT_NOKQUEUE=1
export EVENT_NOPOLL=1

# Mute Startup
# sudo nvram SystemAudioVolume=%80
