#! /bin/bash
#http://misc.flogisoft.com/bash/tip_colors_and_formatting

rbw_show_256_matrix(){
    for fgbg in 38 48 ; do #Foreground/Background
        for color in {0..256} ; do #Colors
            #Display the color
            echo -en "\e[${fgbg};5;${color}m ${color}\t\e[0m"
            #Display 10 colors per lines
            if [ $((($color + 1) % 10)) == 0 ] ; then
                echo #New line
            fi
        done
        echo #New line
    done
}

rbw_show_blue_text_gradient(){
    for i in {16..21} {21..16} ; do
        echo -en "\e[38;5;${i}m#\e[0m" ;
    done ;
    echo
}

rbw_show_blue_gradient(){
    for i in {16..21} {21..16} ; do
        echo -en "\e[48;5;${i}m \e[0m";
    done ;
    echo
}

rbw_show_full_gradient(){
    for i in {0..255} ; do
        echo -en "\e[48;5;${i}m \e[0m";
    done ;
    echo
}
