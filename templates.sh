git_prompt() {
  local GIT
  if [[ "$git_branch" != "" ]]; then
      if [[ $git_dirty == *""* ]]; then
            GIT=$git_branch$GREEN$git_dirty$RED_ON_BLACK""
      else
            GIT=$git_branch$RED$git_dirty$RED_ON_BLACK""
      fi
  else
      GIT=""
  fi
  echo  -en "$GIT"
}

RBW_GIT_ARROW="\
\[$RBW_R_BLACK_ON_WHITE\]\t\[$RBW_R_WHITE_ON_BLACK\]\[$PL_RIGHT_SEPARATOR\]\
\[$RBW_BR_YELLOW_ON_BLACK\] \u@\h\[$RBW_R_BLACK_ON_BLUE\]\[$PL_RIGHT_SEPARATOR\]\
\[$RBW_BR_WHITE_ON_BLUE\] \W\[$RBW_RESET_ALL\]\[$RBW_R_BLUE\]\[$PL_RIGHT_SEPARATOR\]\
\$(git_prompt)\
\[$RBW_RESET_ALL\] "