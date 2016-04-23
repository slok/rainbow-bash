
# Imports
source ${RBW_PLUGINS}/position/init.sh

RBW_THEME="\
\[$RBW_R_MAGENTA\]┌\357\204\221\
  \t \[$RBW_BR_YELLOW\]\u@\h\
\[$RBW_BR_WHITE\]\$(rbw_position_write_end_of_line \w)
\[$RBW_R_MAGENTA\]└\357\201\216\
\[$RBW_RESET_ALL\] "

PS1=${RBW_THEME}
