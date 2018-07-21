
# Imports
source ${RBW_THEMES}/simple/init.sh
source ${RBW_PLUGINS}/k8s/init.sh

get_kubernetes_context() {
    if [[ $rbw_k8s_kubectl_current_context != "" ]]; then
        echo -en "  ☸️ $rbw_k8s_kubectl_current_context"
    fi
}

# To get the code of the unicode character: $ echo  | hexdump
RBW_THEME=" \
\[\$(get_bullet_color)\]   \
\[$RBW_BR_CYAN\]\W\
\[$RBW_BR_BLUE\]\$(get_kubernetes_context)\
\[\$(get_git_color)\]\$(get_git_info)\
 \[$RBW_BR_CYAN\]:\
\[$RBW_RESET_ALL\] "

PS1=${RBW_THEME}
