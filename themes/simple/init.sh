
# Imports
source ${RBW_PLUGINS}/git/init.sh

# This is a hack for the colors. Colors need to be between \[\],
# if you return from "get_git_info" \[$RBW_BR_RED\]$rbw_git_branch  then
# Bash can't interpret those brackets and will cause problems

get_git_color(){
    if [[ $rbw_git_is_repo == 1 ]]; then
        if [[ $rbw_git_dirty == 1 ]]; then
            echo -en "$RBW_BR_RED"
        else
            echo -en "$RBW_BR_GREEN"
        fi
    fi
}

get_git_info(){
    if [[ $rbw_git_is_repo == 1 ]]; then
        if [[ $rbw_git_dirty == 1 ]]; then
            echo -en "$rbw_git_branch  "
        else
            echo -en "$rbw_git_branch  "
        fi
    fi
}

RBW_THEME=" \
\[$RBW_BR_RED\]\357\204\270  \
\[$RBW_BR_CYAN\]\W\
 \[\$(get_git_color)\]\$(get_git_info)\
\[$RBW_BR_CYAN\]:\
\[$RBW_RESET_ALL\] "

PS1=${RBW_THEME}
