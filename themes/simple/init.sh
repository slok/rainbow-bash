
get_git_fmt(){
    if [[ $rbw_git_is_repo == 1 ]]; then
        if [[ $rbw_git_dirty == 1 ]]; then
            echo -en "$RBW_BR_RED $rbw_git_branch "
        else
            echo -en "$RBW_BR_GREEN $rbw_git_branch "
        fi
    fi
}

RBW_THEME_SIMPLE=" \
\[$RBW_BR_RED\]\357\204\270  \
\[$RBW_BR_CYAN\]\W\
\$(get_git_fmt)\
\[$RBW_BR_CYAN\] :\
\[$RBW_RESET_ALL\] "