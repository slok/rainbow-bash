
git_changes=""
git_commits_to_push=""
jobs_background=""
last_command_bad=""

get_last_command_bad_fmt(){
    if [[ $rbw_system_exit_wrong == 1 ]]; then
        echo -en "$last_command_bad "
    else
        echo -en " "
    fi
}

get_running_jobs(){
    # Will always be 2 jobs because of the ttys
    if (( $(rbw_system_get_running_jobs) > 2 )); then
        echo -en "$jobs_background "
    else
        echo -en " "
    fi
}

get_git_changes_fmt(){
    if [[ $rbw_git_is_repo == 1 ]]; then
        if [[ $rbw_git_dirty == 1 ]]; then
            echo -en "$git_changes "
        else
            echo -en ""
        fi
    fi
}

get_git_commits_to_push_fmt(){
    if [[ $rbw_git_is_repo == 1 ]]; then
        if (( $(rbw_git_unpushed_commits) > 0 )); then
            echo -en "$git_commits_to_push"
        else
            echo -en ""
        fi
    fi
}

# First fill the line
# Gear: means jobs on background
# Alert: last command gone wrong
# bulls eye: changes in git
# alert circle: commit to push

RBW_THEME_MAYDAY="\
\[$RBW_R_BLACK_ON_BLACK\]\$(rbw_strings_fill_line_with_char \" \")\
\[$RBW_R_WHITE_ON_BLACK\] \u\
\[$RBW_BR_WHITE_ON_BLACK\]@\H\
  \[$RBW_BR_YELLOW_ON_BLACK\]\W\
\
\$(rbw_position_write_end_of_line \"\
\[$RBW_BR_GREEN_ON_BLACK\]\$rbw_git_branch \
\[$RBW_BL_CYAN_ON_BLACK\]\$(get_git_changes_fmt)\
\[$RBW_BL_YELLOW_ON_BLACK\]\$(get_git_commits_to_push_fmt)
\")
\[$RBW_BR_RED_ON_BLACK\]\$(get_last_command_bad_fmt)\
\[$RBW_BR_GREEN_ON_BLACK\]\$(get_running_jobs)\
\[$RBW_R_WHITE_ON_BLACK\]$\
\[$RBW_RESET_ALL\] "