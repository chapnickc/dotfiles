GREEN="%{$fg_bold[green]%}"
YELLOW="%{$fg_bold[magenta]%}"
CYAN="%{$fg_bold[cyan]%}"
RED="%{$fg_bold[red]%}"
RESET="%{$reset_color%}"
TEST=""

ZSH_THEME_GIT_PROMPT_PREFIX="$YELLOW $CYAN"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" $RED⦿"
ZSH_THEME_GIT_PROMPT_CLEAN=" $GREEN⦾"

PROMPT='$GREEN▶ $YELLOW%c $(git_prompt_info) $RESET'
