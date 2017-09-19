
# Imports
source ${RBW_PLUGINS}/git/init.sh
source ${RBW_PLUGINS}/system/init.sh

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
            echo -en "   $rbw_git_branch  "
        else
            echo -en "   $rbw_git_branch  "
        fi
    fi
}

get_bullet_color() {
    if [[ $rbw_system_exit_wrong == 1 ]]; then
        echo -en "$RBW_BR_RED"
    else
        echo -en "$RBW_BL_WHITE"
    fi
}

# To get the code of the unicode character: $ echo  | hexdump
RBW_THEME=" \
\[\$(get_bullet_color)\]   \
\[$RBW_BR_CYAN\]\W\
 \[\$(get_git_color)\]\$(get_git_info)\
\[$RBW_BR_CYAN\]:\
\[$RBW_RESET_ALL\] "

PS1=${RBW_THEME}
