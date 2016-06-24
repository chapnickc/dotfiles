#if [ -f "$HOME/dotfiles" ]; then
#    PATH="$PATH:$HOME/dotfiles"
#fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

set -o vi  # enable vi commands in bash 

# -------------------------------
#            Exports
# -------------------------------
export EDITOR='vim'                 # Make vim the default editor.

export LC_ALL=en_US.UTF-8           # Prefer US English and use UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
export PYTHONIOENCODING='UTF-8'

# indicate location file of matplotlib config
#export MATPLOTLIBRC='/home/chapnick/.matplotlib'

# for using arduino makefile 
#export ARDUINO_DIR="/opt/arduino-1.6.9"
#export ARDMK_DIR="/home/chapnick/repos/Arduino-Makefile"
#export AVR_TOOLS_DIR="/opt/arduino-1.6.9/hardware/tools/avr"


# use any key to get things flowing again
stty ixany


# simplified color names for easy access
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
lightblue='\e[1;94m' #light blue
 
txtrst='\e[0m'    # Text Reset

royal_blue='\e[38;5;69m'

# Setup the normal PS1 here
PS1="\[$bldgrn\][\[$txtrst\] \[$bldpur\]\u: \[$royal_blue\]\W \[$txtrst\]\[$bldgrn\]]\[$txtrst\] \[$bldylw\]➯ \[$txtrst\] "


LS_COLORS="di=1;96:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90"
export LS_COLORS

export EVENT_NOEPOLL=1


#test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
