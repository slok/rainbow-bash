# Rainbow activated
export RBW=1

#PATHS
RBW_PLUGINS=$RBW_PATH/plugins
RBW_FONTS=$RBW_PATH/fonts

# Init colors
source $RBW_PATH/colors/init.sh

rbw_load_theme() {
    case "$1" in
        "simple")  source ${RBW_PATH}/themes/simple/init.sh     ;;
        "regular")  source ${RBW_PATH}/themes/regular/init.sh     ;;
        "minimal")  source ${RBW_PATH}/themes/minimal/init.sh     ;;
        "arrow")  source ${RBW_PATH}/themes/arrow/init.sh     ;;
        "hacker")  source ${RBW_PATH}/themes/hacker/init.sh     ;;
        "video")  source ${RBW_PATH}/themes/video/init.sh     ;;
        "mayday")  source ${RBW_PATH}/themes/mayday/init.sh     ;;
    esac
}
