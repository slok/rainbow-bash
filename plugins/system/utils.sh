
rbw_system_set_exit_status(){
    if [[ "$?" == 0 ]]; then
        rbw_system_exit_wrong=0
    else
        rbw_system_exit_wrong=1
    fi
}

rbw_system_get_running_jobs(){
    echo -en `jobs -l | wc -l`
}