
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}) %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%})" 


: #------------------------------
_COLUMNS=$(tput cols) 

_TITLE=" 知行合一"

_TITLE_POS=$(( ( $_COLUMNS - ${#_TITLE} )  / 2 ))
_TITLE_INDENT=$(printf "%-${_TITLE_POS}s" " ")

echo " "
echo -e "${_TITLE_INDENT}\033[41;37;5m ${_TITLE} \033[0m"
echo " "

_MOTTOS=(
    "The only way to do great work is to love what you do."
    "Life is too short to be living somebody else's dream."
    "Hello World!"
    "沧海一声笑，滔滔两岸潮，浮沉随浪，只记今朝。苍天笑，纷纷世上潮，谁负谁胜出，天知晓"
)

_MIN=1
_MAX=${#_MOTTOS}
_INDEX=$( jot -r 1 $_MIN $_MAX )
_MOTTO=${_MOTTOS[$_INDEX]}

_MOTTO_POS=$(( ( $_COLUMNS - ${#_MOTTO} )  / 2 ))
_TITLE_INDENT=$(printf "%-${_MOTTO_POS}s" " ")

echo -e "${_TITLE_INDENT}( '${_MOTTO}' )"
echo " "
: #------------------------------
