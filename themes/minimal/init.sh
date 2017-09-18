
# Imports
source ${RBW_PLUGINS}/battery/init.sh

battery_icon_array=( "" "" "" "" "" "")
battery_color_array=("$RBW_R_RED" "$RBW_R_RED" "$RBW_BR_BLUE" "$RBW_BR_CYAN" "$RBW_BR_CYAN" "$RBW_R_GREEN")
charging_icon=""
charging_color="$RBW_R_YELLOW"


get_charging_icon(){
    if [[ ${rbw_battery_charging} == 1 ]]; then
        echo -en "${charging_icon}"
    else
        echo -en " "
    fi
}

get_battery_icon(){
    if [[ ${rbw_battery_full} == 1 ]]; then
        echo -en "${battery_icon_array[5]}"
    else
        icon_index=$(((rbw_battery_percent/20)))
        echo -en "${battery_icon_array[${icon_index}]}"
    fi
}

get_battery_color(){
    if [[ ${rbw_battery_full} == 1 ]]; then
        echo -en "${battery_color_array[5]}"
    elif [[ ${rbw_battery_charging} == 1 ]]; then
        echo -en "${charging_color}"
    else
        icon_index=$(((rbw_battery_percent/20)))
        echo -en "${battery_color_array[${icon_index}]}"
    fi
}


RBW_THEME="\
\[\$(get_battery_color)\] \$(get_charging_icon) \$(get_battery_icon)  \
\[$RBW_R_BLUE\]\357\201\224\
\[$RBW_L_BLUE\]\357\201\224\
\[$RBW_R_CYAN\]\357\201\224\
\[$RBW_RESET_ALL\] "

PS1=${RBW_THEME}
