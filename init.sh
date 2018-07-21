# Rainbow activated
export RBW=1

#PATHS
RBW_PLUGINS=$RBW_PATH/plugins
RBW_THEMES=$RBW_PATH/themes
RBW_FONTS=$RBW_PATH/fonts

# Init colors
source $RBW_PATH/colors/init.sh

rbw_load_theme() {
    case "$1" in
        "simple")  source ${RBW_THEMES}/simple/init.sh     ;;
        "ksimple")  source ${RBW_THEMES}/ksimple/init.sh     ;;
        "regular")  source ${RBW_THEMES}/regular/init.sh     ;;
        "minimal")  source ${RBW_THEMES}/minimal/init.sh     ;;
        "arrow")  source ${RBW_THEMES}/arrow/init.sh     ;;
        "hacker")  source ${RBW_THEMES}/hacker/init.sh     ;;
        "video")  source ${RBW_THEMES}/video/init.sh     ;;
        "mayday")  source ${RBW_THEMES}/mayday/init.sh     ;;
    esac
}
