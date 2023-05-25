#!/bin/bash
#https://exercism.org/tracks/bash/exercises/clock/

main()
{
    hour="$1"
    min="$2"

    if [[ "$1" -lt 0 && "$2" -lt 0 ]]; then
        optHour=$((24+($1%24)-($2/60)))
        optMin=$((60+($2%60)))
    elif [[ "$1" -ge 0 && "$2" -ge 0 ]]; then
        optHour=$((($1%24)+($2/60)))
        optMin=$(($2%60))
    elif [[ "$1" -ge 0 && "$2" -lt 0 ]]; then
        optHour=$((($1+((-70+$2)/60))%24))
        optMin=$((60+($2%60)))
    elif [[ "$1" -le 0 && "$2" -ge 0 ]]; then
        optHour=$((($1+($2/60)%24)))
        optMin=$(($2%60))
    fi
    
    if [[ "$optHour" -lt 10 ]]; then
        optHour="0$optHour"
    fi
    if [[ "$optMin" -lt 10 ]]; then
        optMin="0$optMin"
    fi
    echo "$optHour:$optMin"
}

main "$@"
