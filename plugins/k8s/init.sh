source $RBW_PLUGINS/k8s/utils.sh

# Only activate the plugin when Kubectl is available.
if [[ -x "$(command -v kubectl)" ]]; then
    # Create the variables calling the functions
    PROMPT_COMMAND="rbw_k8s_kubectl_current_context;\
    $PROMPT_COMMAND"
fi
