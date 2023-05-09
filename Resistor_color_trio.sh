#!/bin/bash

#https://exercism.org/tracks/bash/exercises/resistor-color-trio

main()
{
    fopt=""
    for (( i=1;i<=$#;i++ )) ; do
        color="${*:$i:1}"
        case "$color" in 
            black)
                opt="0"
                ;;
            brown)
                opt="1"
                ;;
            red)
                opt="2"
                ;;
            orange)
                opt="3"
                ;;
            yellow)
                opt="4"
                ;;
            green)
                opt="5"
                ;;
            blue)
                opt="6"
                ;;
            violet)
                opt="7"
                ;;
            grey)
                opt="8"
                ;;
            white)
                opt="9"
                ;;
            *)
                echo "invalid color"
                exit 1
                ;;
        esac

        if [[ "$i" -eq 1 ]]; then 
            if [[ "$opt" -eq 0 ]]; then 
                opt=''
            fi
            fopt="$fopt$opt"
        elif [[ "$i" -eq 2 ]]; then 
            fopt="$fopt$opt"
        elif [[ "$i" -eq 3 ]]; then
            z=""
            for (( d=0;d<$opt;d++ )); do
                nom=$(echo -n "0")
                z="${z}${nom}"
            done
            fopt="$fopt$z"
        fi
    done

    if [[ "$fopt"%1000000000 -eq 0 && "$fopt" -ne 0 ]];then
        fopt="$(($fopt/1000000000)) giga"
    elif [[ "$fopt"%1000000 -eq 0 && "$fopt" -ne 0 ]];then
        fopt="$(($fopt/1000000)) mega"
    elif [[ "$fopt"%1000 -eq 0 && "$fopt" -ne 0 ]];then
        fopt="$(($fopt/1000)) kilo"
    else
        fopt="${fopt} "
    fi

echo "${fopt}ohms"
}

main "$@"
